<?php
/**
 * ───────────────────────────────────────────────
 * ⚙️ NiBel Core - BaseController.php
 * ───────────────────────────────────────────────
 * Controlador genérico base para el framework NiBel Core.
 *
 * Esta plantilla define la estructura que deben seguir todos
 * los controladores del sistema. Está pensada para trabajar
 * con el patrón MVC y con los modelos basados en Active Record.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

use Model\ModeloEjemplo;
use PHPMailer\PHPMailer\PHPMailer;

class BaseController
{
    /**
     * 🧭 Método index()
     * ------------------------------------------------
     * Punto de entrada genérico para mostrar la página
     * principal del módulo. Cada controlador puede
     * sobrescribirlo o adaptarlo.
     *
     * @param Router $router Instancia del enrutador principal.
     */
    public static function inicio(Router $router)
    {
        $router->render('inicio', []);
    }

     /**
     * 🧭 Método documentacion()
     * ------------------------------------------------
     * Documentación principal del módulo. 
     * Cada controlador puede
     * sobrescribirlo o adaptarlo.
     *
     * @param Router $router Instancia del enrutador principal.
     */
    public static function docs(Router $router)
    {
        $router->render('/docs', []);
    }

    /**
     * 🧩 Método crear()
     * ------------------------------------------------
     * Ejemplo de método genérico para manejar un formulario
     * de creación (alta) usando Active Record.
     *
     * @param Router $router
     * @param Request $request
     */
    public static function crear(Router $router, Request $request)
    {
        // Instancia vacía del modelo (ejemplo)
        $modelo = new ModeloEjemplo;
        $errores = [];

        if ($request->method() === 'POST') {
            // Sincronizar datos del formulario con el modelo (ya saneados)
            $datosPost = $request->allPostData();
            $modelo->sincronizar($datosPost);

            // Validar
            $errores = $modelo->validar();

            // Guardar si no hay errores
            if (empty($errores)) {
                $modelo->guardar();
                header('Location: /modulo');
                exit;
            }
        }

        // Renderizar vista con datos
        $router->render('modulo/crear', [
            'modelo' => $modelo,
            'errores' => $errores
        ]);
    }

    /**
     * ✏️ Método editar()
     * ------------------------------------------------
     * Ejemplo de controlador para actualizar un registro.
     */
    public static function editar(Router $router, Request $request)
    {
        // Obtenemos el ID de forma segura desde el Request
        $id = $request->get('id', null, FILTER_VALIDATE_INT);
        if (!$id) {
            header('Location: /modulo');
            exit;
        }

        $modelo = ModeloEjemplo::find($id);
        $errores = [];

        if (!$modelo) {
            header('Location: /modulo');
            exit;
        }

        if ($request->method() === 'POST') {
            $datosPost = $request->allPostData();
            $modelo->sincronizar($datosPost);
            $errores = $modelo->validar();

            if (empty($errores)) {
                $modelo->guardar();
                header('Location: /modulo');
                exit;
            }
        }

        $router->render('modulo/editar', [
            'modelo' => $modelo,
            'errores' => $errores
        ]);
    }

    /**
     * ❌ Método eliminar()
     * ------------------------------------------------
     * Ejemplo genérico para eliminar un registro.
     */
    public static function eliminar()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = $_POST['id'] ?? null;

            if ($id) {
                $registro = ModeloEjemplo::find($id);
                if ($registro) $registro->eliminar();
            }

            header('Location: /modulo');
            exit;
        }
    }

    /**
     * ❌ Método enviar Correo()
     * ------------------------------------------------
     * Ejemplo genérico para enviar correo con PHPMailer.
     */
    public static function enviarEmail(Router $router)
    {

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        $respuestas = $_POST;

            //Crear instancia para enviar correo
            $mail = new PHPMailer();

            //Configurar SMTP
            $mail->isSMTP();
            $mail->Host = $_ENV['MAIL_HOST'];
            $mail->SMTPAuth = true;
            $mail->Username = $_ENV['MAIL_USER'];
            $mail->Password = $_ENV['MAIL_PASS'];
            $mail->SMTPSecure = 'tls';
            $mail->Port = $_ENV['MAIL_PORT'];

            //Configurar el contenido del email
            $mail->setFrom('from@example.com', 'Mailer');
            $mail->addAddress('joe@example.net', 'Joe User');     //Add a recipient
            $mail->addAddress('ellen@example.com');               //Name is optional
            $mail->addReplyTo('info@example.com', 'Information');
            $mail->addCC('cc@example.com');
            $mail->addBCC('bcc@example.com');

            //Adjuntos
            $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
            $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

            //Definir contenido
            $contenido = '<html>';
            $contenido .= '<p>Tienes un nuevo mensaje</p>';
            $contenido .= '<p>De:</p>' . $respuestas['email'];
            $contenido .= 'Mensaje:' . $respuestas['cuerpoemail'];
            $contenido .= '</html>';

            //Cuerpo del Email
            $mail->isHTML(true);
            $mail->CharSet = 'UTF-8';                         //Set email format to HTML
            $mail->Subject = 'Here is the subject';
            $mail->Body    = $contenido;
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            if($mail->send()) {
                echo 'Mensaje enviado correctamente';
            } else {
                echo 'Mensaje no enviado';
            }
        }
        $router->render('enviaremail', []);
    }
}
