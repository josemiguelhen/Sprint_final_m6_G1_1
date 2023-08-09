<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Inicio - Grupo One!</title>
    <!-- Incluyendo estilos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
          crossorigin="anonymous">
    <style>
        /* Estilos personalizados */
        body {
            background-color: #59F7CD;
        }
        .container {
            padding-top: 20px;
        }
        h1 {
            color: #03054F;
        }
        h2 {
            color: #171F1C;
            margin-top: 20px;
        }
        p {
            color: #5C6482;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <!-- Incluyendo navbar menu -->
    <c:set var="navItem" value="Inicio" />
    <!-- Menu activo -->

    <main class="flex-shrink-0">
        <!-- Pagina de inicio -->
        <div class="container">
            <section class="mt-5">
                <h1>¡Seas muy bienvenido, estas en el website de Grupo One!</h1>
                <h1>SOBRE NOSOTROS</h1>
                <p>En nuestra organización, nos especializamos en la salvaguarda de la integridad en el ámbito laboral. Nuestra meta primordial es asegurar el bienestar y la seguridad de los individuos en su entorno de trabajo. Contamos con un equipo de expertos altamente cualificados y experimentados en diversas áreas de prevención de riesgos. Colaboramos estrechamente con nuestros clientes para detectar y reducir los peligros inherentes a sus labores.</p>
                <p>Ofrecemos una variedad de servicios que abarcan consultoría, evaluación de riesgos, implantación de medidas preventivas y formación en seguridad laboral. Nuestro enfoque se basa en adaptar nuestras soluciones a las necesidades específicas de cada cliente, brindando resultados eficaces y personalizados. La seguridad constituye nuestra máxima prioridad y nos empeñamos en fomentar una cultura de prevención en todas las organizaciones con 
                las que colaboramos. Estamos convencidos de que la prevención de riesgos es esencial para garantizar un ambiente de trabajo sano y productivo.</p>
                <p>Si estás en búsqueda de soluciones relacionadas con la prevención de riesgos para tu empresa, no dudes en contactarnos. Estaremos encantados de ayudarte a proteger a tus empleados y cumplir con las normativas de seguridad vigentes.</p>
                <p>GRUPO ONE S.A.</p>
                <h2>PROBLEMAS A ABORDAR:</h2>
                <p>Una de las principales problemáticas que las compañías enfrentan radica en la carencia de un sistema de gestión de datos eficaz para manejar la gran cantidad de información generada y supervisar las operaciones y el personal involucrado.</p>
                <p>Además, la organización de las visitas a los clientes tiende a ser complicada, ya que nuestros expertos están con frecuencia en terreno y no siempre se encuentran disponibles para comunicar sus futuras actividades.</p>
                <p>Otro obstáculo se presenta debido a la falta de registro y seguimiento de la labor de cada profesional, lo cual dificulta la asignación de recursos y la coordinación de los procesos de formación. </p>
                <p>Esto puede resultar en sanciones financieras para la empresa cuando personas no vinculadas participan en charlas o cuando no se lleva a cabo una adecuada coordinación en la realización de las capacitaciones.</p>
                <p>Adicionalmente, nos vemos privados de un sistema que permita llevar un control de los pagos de los clientes, lo que provoca desequilibrios económicos y hace que algunas tareas sean asumidas por nuestra entidad.</p>
                <p>El registro de las actividades se efectúa mediante carpetas, lo que complica la supervisión de las consultorías y la recopilación de resultados por parte de la empresa. Por si fuera poco, en ocasiones se omiten ciertas actividades de control y ejecución de soluciones, lo que puede derivar en multas para nuestros clientes y una merma en la calidad del servicio. </p>
                <p>También se presenta una ausencia de un registro completo en relación a las acciones preventivas realizadas y los logros obtenidos.</p>
                
                <h2>PROPUESTA DE SOLUCIÓN DE GRUPO ONE:</h2>
                <p>Con el fin de abordar estas dificultades, hemos concebido una solución tecnológica integral empleando las tecnologías de JSP y JSTL. Nuestro sistema permite la planificación y supervisión de actividades, así como la administración de la cartera de clientes. Simplifica la coordinación entre nuestra empresa, los especialistas y los clientes, garantizando así una respuesta anticipada ante situaciones de seguridad.</p>
                
            </section>
        </div>
    </main>

    <!-- JavaScript Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    <%@include file="footer.jsp"%>
</body>
</html>
