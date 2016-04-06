package com.lipinskyi.common.database;

import com.mysql.fabric.jdbc.FabricMySQLDriver;

import java.sql.*;
import java.util.Random;

public class WorkingWithDatabase {


    final private String URL = "jdbc:mysql://localhost:3306/mydbtest?autoReconnect=true&useSSL=false";
    final private String USERNAME = "root";
    final private String PASSWORD = "root";


/*    public void startInputRandomNumbers(int minValue, int maxValue) {
        Random random = new Random();

         try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             Statement statement = connection.createStatement()) {

            int i = 24;
            while (i > 0) {
                int tempHourly = minValue + random.nextInt(maxValue - minValue + 1);
                statement.execute("insert into temp_hourly (temperature) values ( " + tempHourly + ");");
                System.out.println(i + " " + tempHourly);
                i--;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }*/

    public int[] getDataFromDatabase() {

        int[] array = new int[24];

        mySqlDriverConnection();

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             Statement statement = connection.createStatement()) {

            ResultSet resultSet = statement.executeQuery("SELECT temp_hourly.temperature FROM temp_hourly");

            int i = 0;
            while (resultSet.next() && i < 24) {
                array[i] = resultSet.getInt("temperature");
                //System.out.println(i + " " + array[i]);
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return array;
    }

    public String getMode(){
        String mode = "";
        mySqlDriverConnection();

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             Statement statement = connection.createStatement()) {

            ResultSet resultSet = statement.executeQuery("SELECT modes.mode FROM modes WHERE id=1");
            if (resultSet.next()) {
                mode = resultSet.getString("mode");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mode;
    }

    public void setMode(String mode){
        mySqlDriverConnection();

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             Statement statement = connection.createStatement()) {

            statement.executeUpdate("UPDATE modes SET mode = '" + mode + "' WHERE id = 1;");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void mySqlDriverConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Driver driver = new FabricMySQLDriver();
            DriverManager.registerDriver(driver);

        } catch (SQLException e) {
            System.err.println("Не удалось загрузить класс драйвера!");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
