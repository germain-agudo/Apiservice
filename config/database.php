<?php
class DatabaseConnection
{
    protected $db;
    protected function conexion()
    {
        $host = 'bw8jvxbunfej66weo8cs-mysql.services.clever-cloud.com'; 
        $nombreDB = 'bw8jvxbunfej66weo8cs';
        $usuario = 'uzxqhjyqerkpa4g4';
        $contraseña = 'JD9nyp22HhnXxwjUgzad';
        /*  dataSourceName: Tipo de base de datos */
        $dsn = 'mysql:host=' . $host . '; dbname=' . $nombreDB . ';';
        try {
            $conectar = $this->db = new PDO($dsn, $usuario, $contraseña);
            return $conectar;
        } catch (Exception $exc) {
            print("Error" . $exc->getMessage() . "</br>");
            die();
        }
    }
    public function set_name()
    {
        return $this->db->query("SET NAMES 'utf8'; ");
    }
}
?>