$(function () {

/*    var dataHourly1 = new Array();
    var dataHourly2 = new Array();

    $.get("temperatureHourly1", function (data, status) {
        dataHourly1 = data;*/
        draw();
/*        console.log(dataHourly1);
    });

    $.get("temperatureHourly2", function (data, status) {
        dataHourly2 = data;
        draw();
        console.log(dataHourly2);
    });*/

    //////////////////////////////
    //Hourly Average Temperature//
    //////////////////////////////

    function draw(){
        $('#container_hourly_temp').highcharts({

            title: {
                text: 'Hourly Average Temperature',
                x: -20 //center
            },
            subtitle: {
                //text: 'Source: WorldClimate.com',
                x: -20
            },
            xAxis: {
                categories: ['00:00', '01:00', '02:00', '03:00', '04:00', '05:00',
                    '06:00', '07:00', '08:00', '09:00', '10:00', '11:00', '12:00',
                    '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', '19:00',
                    '20:00', '21:00', '22:00', '23:00']
            },
            yAxis: {
                title: {
                    text: 'Temperature (°C)'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '°C'
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'Room1',
                data: /*dataHourly1*/[18.9, 18.8, 18.9, 18.7, 18.7, 18.7, 18.5, 20.0, 21.0, 21.1, 22.0, 22.1, 21.5, 22.4, 22.5, 22.6, 22.4, 21.9, 22.3, 22.6, 22.3, 21.3, 20.3, 19.5]
            }, {
                name: 'Room2',
                data: /*dataHourly2*/[17.7, 17.4, 17.5, 17.2, 17.4, 17.3, 17.6, 19.4, 20.3, 20.1, 21.0, 21.1, 21.5, 21.6, 21.3, 21.3, 21.8, 22.9, 21.6, 21.4, 21.5, 21.4, 19.2, 18.3]
            }, {
                name: 'Room3',
                data: [16.9, 16.8, 16.9, 16.7, 17.7, 17.7, 19.5, 20.1, 20.0, 19.1, 19.0, 19.1, 18.5, 18.4, 18.5, 18.6, 18.4, 18.9, 18.3, 18.6, 18.3, 17.3, 17.3, 16.5]
            }, {
                name: 'Room4',
                data: [20.9, 20.8, 20.9, 20.7, 20.7, 20.7, 20.0, 21.0, 22.0, 22.1, 23.0, 23.1, 23.5, 22.8, 23.5, 23.6, 24.4, 23.9, 22.6, 23.6, 24.3, 22.3, 23.3, 20.5]
            }]
        });

    }



    //////////////////////////////
    //Daily Average Temperature//
    //////////////////////////////

    $('#container_daily_temp').highcharts({
        title: {
            text: 'Daily Average Temperature',
            x: -20 //center
        },
        subtitle: {
            //text: 'Source: WorldClimate.com',
            x: -20
        },
        xAxis: {
            categories: ['Mondey', 'Tueday', 'Wednesday', 'Thurday', 'Friday', 'Saturday',
                'Sunday']
        },
        yAxis: {
            title: {
                text: 'Temperature (°C)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '°C'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Room1',
            data: [20.9, 21.2, 21.7, 20.5, 21.9, 20.2, 20.0]
        }, {
            name: 'Room2',
            data: [22.9, 23.2, 22.7, 22.5, 22.9, 23.2, 23.0]
        }, {
            name: 'Room3',
            data: [17.9, 17.2, 18.7, 19.0, 19.2, 18.5, 19.0]
        }, {
            name: 'Room4',
            data: [24.9, 24.2, 23.7, 23.0, 23.4, 22.9, 22.4]
        }]
    });

    //////////////////////////////
    //Monthly Average Temperature//
    //////////////////////////////

    $('#container_monthly_temp').highcharts({
        title: {
            text: 'Monthly Average Temperature',
            x: -20 //center
        },
        subtitle: {
            //text: 'Source: WorldClimate.com',
            x: -20
        },
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        },
        yAxis: {
            title: {
                text: 'Temperature (°C)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '°C'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Room1',
            data: [22.1, 23.9, 23.0, 22.5, 22.2, 20.5, 22.2, 21.5, 22.3, 23.3, 22.9, 21.6]
        }, {
            name: 'Room2',
            data: [21.1, 22.9, 20.0, 20.5, 22.2, 21.5, 20.2, 20.5, 21.3, 22.9, 21.9, 23.6]
        }, {
            name: 'Room3',
            data: [17.1, 17.9, 18.0, 16.9, 17.2, 18.5, 18.2, 17.5, 18.3, 17.3, 17.9, 17.6]
        }, {
            name: 'Room4',
            data: [23.1, 24.9, 24.0, 23.5, 24.2, 23.5, 23.2, 24.5, 23.3, 23.3, 23.9, 22.6]
        }]
    });

    //////////////////////////////
    //  Hourly Average Humidity //
    //////////////////////////////

    $('#container_hourly_humid').highcharts({
        title: {
            text: 'Hourly Average Humidity',
            x: -20 //center
        },
        subtitle: {
            x: -20
        },
        xAxis: {
            categories: ['00:00', '01:00', '02:00', '03:00', '04:00', '05:00',
                '06:00', '07:00', '08:00', '09:00', '10:00', '11:00', '12:00',
                '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', '19:00',
                '20:00', '21:00', '22:00', '23:00']
        },
        yAxis: {
            title: {
                text: 'Humidity (%)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '%'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Room1',
            data: [49.0, 50.9, 51.5, 52.5, 54.2, 48.5, 50.2, 50.5, 47.3, 49.3, 52.9, 53.6, 54.6, 55.0, 56.9, 53.5, 50.5, 49.2, 48.5, 48.2, 46.5, 48.3, 49.3, 50.9]
        }, {
            name: 'Room2',
            data: [48.0, 49.9, 50.5, 51.5, 53.2, 47.5, 49.2, 49.5, 48.3, 48.3, 51.9, 52.6, 53.6, 54.0, 55.9, 52.5, 49.5, 48.2, 47.5, 47.2, 47.5, 47.3, 48.3, 49.9]
        }, {
            name: 'Room3',
            data: [53.0, 54.9, 55.5, 55.5, 56.2, 56.5, 58.2, 55.5, 54.3, 53.3, 54.9, 56.6, 55.6, 56.0, 54.9, 53.5, 54.5, 55.2, 54.5, 57.2, 56.5, 58.3, 59.3, 55.9]
        }, {
            name: 'Room4',
            data: [59.0, 60.9, 61.5, 62.5, 64.2, 58.5, 60.2, 60.5, 57.3, 59.3, 62.9, 63.6, 64.6, 65.0, 66.9, 63.5, 60.5, 59.2, 58.5, 58.2, 56.5, 58.3, 59.3, 60.9]
        }]
    });

    //////////////////////////////
    //  Daily Average Humidity  //
    //////////////////////////////

    $('#container_daily_humid').highcharts({
        title: {
            text: 'Daily Average Humidity',
            x: -20 //center
        },
        subtitle: {
            //text: 'Source: WorldClimate.com',
            x: -20
        },
        xAxis: {
            categories: ['Mondey', 'Tueday', 'Wednesday', 'Thurday', 'Friday', 'Saturday', 'Sunday']
        },
        yAxis: {
            title: {
                text: 'Humidity (%)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '%'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Room1',
            data: [50.1, 49.9, 48.8, 51.5, 51.2, 51.5, 50.2]
        }, {
            name: 'Room2',
            data: [49.1, 49.0, 51.8, 50.5, 47.2, 55.5, 55.2]
        }, {
            name: 'Room3',
            data: [48.1, 54.9, 53.8, 54.5, 49.2, 48.5, 48.2]
        }, {
            name: 'Room4',
            data: [59.1, 58.9, 61.8, 61.0, 58.2, 65.5, 64.2]
        }]
    });

    //////////////////////////////
    //Monthly Average Temperature//
    //////////////////////////////

    $('#container_monthly_humid').highcharts({
        title: {
            text: 'Monthly Average Humidity',
            x: -20 //center
        },
        subtitle: {
            //text: 'Source: WorldClimate.com',
            x: -20
        },
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        },
        yAxis: {
            title: {
                text: 'Humidity (%)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '%'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Room1',
            data: [50.1, 49.9, 50.0, 51.5, 51.2, 51.5, 53.2, 50.5, 53.3, 48.3, 49.9, 49.6]
        }, {
            name: 'Room2',
            data: [51.1, 48.9, 52.0, 53.5, 54.2, 52.5, 51.2, 48.5, 52.3, 48.6, 48.1, 48.5]
        }, {
            name: 'Room3',
            data: [50.9, 49.3, 49.0, 49.5, 48.2, 48.5, 53.9, 54.5, 51.3, 48.9, 49.2, 49.0]
        }, {
            name: 'Room4',
            data: [60.1, 59.9, 60.0, 61.5, 61.2, 61.5, 63.2, 60.5, 63.3, 58.3, 59.9, 59.6]
        }]
    });
});