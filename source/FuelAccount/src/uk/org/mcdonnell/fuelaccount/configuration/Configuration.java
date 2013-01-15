package uk.org.mcdonnell.fuelaccount.configuration;

import java.io.FileNotFoundException;

import android.annotation.SuppressLint;

public class Configuration {

    private enum FileNames {
        VEHICLES, STATIONS
    }

    @SuppressLint("DefaultLocale")
    public static String getVehiclesFile()
            throws FileNotFoundException {
        return String.format("%s.%s", FileNames.VEHICLES.toString()
                .toLowerCase(), "xml");
    }

    @SuppressLint("DefaultLocale")
    public static String getStationsFile() {
        return String.format("%s.%s", FileNames.STATIONS.toString()
                .toLowerCase(), "xml");
    }
}