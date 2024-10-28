package config;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Fecha {
    
    public static String obtenerFechaActual() {
        Date fecha = new Date();
        SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
        return formatoFecha.format(fecha);
    }

    public static String obtenerFechaHoraActual() {
        Date fecha = new Date();
        SimpleDateFormat formatoFechaHora = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return formatoFechaHora.format(fecha);
    }
}
