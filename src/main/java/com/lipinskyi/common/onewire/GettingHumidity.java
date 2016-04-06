package com.lipinskyi.common.onewire;

import com.dalsemi.onewire.OneWireAccessProvider;
import com.dalsemi.onewire.adapter.DSPortAdapter;
import com.dalsemi.onewire.container.HumidityContainer;
import com.dalsemi.onewire.container.OneWireContainer;

import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.Vector;

public class GettingHumidity {
    public static void start()
    {
        try
        {
            Vector humidity_devices = new Vector(1);

            // get the default adapter and show header
            DSPortAdapter adapter = OneWireAccessProvider.getDefaultAdapter();
            System.out.println();
            System.out.println("Adapter: " + adapter.getAdapterName() + " Port: " + adapter.getPortName());
            System.out.println();
            System.out.println("Devices Found:");
            System.out.println("--------------");

            // get exclusive use of adapter/port
            adapter.beginExclusive(true);

            // find all devices
            adapter.setSearchAllDevices();
            adapter.targetAllFamilies();
            if(adapter.canFlex())
                adapter.setSpeed(adapter.SPEED_FLEX);

            // enumerate through all the 1-Wire devices found to find
            // containers that implement HumidityContainer
            for(Enumeration owd_enum = adapter.getAllDeviceContainers();
                                                         owd_enum.hasMoreElements(); )
                {
                    OneWireContainer owd = (OneWireContainer)owd_enum.nextElement();
                    System.out.print(owd.getAddressAsString());
                    if (owd instanceof HumidityContainer)
                {
                    humidity_devices.addElement(owd);
                    System.out.println("  Humidity Sensor, Relative=" + ((HumidityContainer)owd).isRelative());
                }
                else
                    System.out.println("  NOT Humidity Sensor");
            }

            if (humidity_devices.size() == 0)
                throw new Exception("No Humitiy devices found!");

            // display device found
            System.out.println();
            System.out.println("Hit ENTER to stop reading humidity");

            // loop and read RH or ENTER to quit
            FileInputStream keyboard = new FileInputStream(FileDescriptor.in);
            for (;;)
            {
                // read each RH temp found
                for (int i = 0; i < humidity_devices.size(); i++)
                {
                    HumidityContainer hc = (HumidityContainer)humidity_devices.elementAt(i);
                    byte[] state = hc.readDevice();
                    hc.doHumidityConvert(state);
                    System.out.println(((OneWireContainer)hc).getAddressAsString() +
                            " humidity = " + hc.getHumidity(state) + "%");
                }

                // check for ENTER
                if (keyboard.available() != 0)
                    break;
            }

            // end exclusive use of adapter
            adapter.endExclusive();
            // free port used by adapter
            adapter.freePort();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }

        return;
    }
}
