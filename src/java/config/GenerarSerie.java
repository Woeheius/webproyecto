package config;

public class GenerarSerie {
    private int numeroSerie;

    public GenerarSerie() {
        this.numeroSerie = 1000; // Número inicial de la serie; puedes ajustarlo
    }

    public String generarCodigo() {
        numeroSerie++;
        return String.format("CON%04d", numeroSerie); // Ejemplo: CON1001
    }
}
