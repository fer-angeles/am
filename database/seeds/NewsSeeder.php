<?php

use App\Entities\News;
use Illuminate\Database\Seeder;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'id'        => 1,
                'new_type'  => 1,
                'title'     => 'Piden a Iglesias difundir mensaje para que fieles permanezcan en sus casas',
                'abstract'  => htmlspecialchars('<p>Este llamado se dio un día después de que el <strong>Consejo de Salubridad General </strong>declaró la emergencia sanitaria y con ello la suspensión de actividades no esenciales.</p>',ENT_QUOTES),
                'context'   => htmlentities('<h1>Información veraz</h1><p>Para contribuir a este objetivo, Gobernación también pidió difundir información veraz, evitando discursos que confronten, confundan y dividan a la población.</p>'),
                'url'       => 'piden_a_iglesias_difundir_mensaje_para_que_fieles_permanezcan_en_sus_casas',
                'img'       => 'piden_a_iglesias_difundir_mensaje_para_que_fieles_permanezcan_en_sus_casas.jpg'
            ],
            [
                'id'        => 2,
                'new_type'  => 1,
                'title'     => 'México pide a sus migrantes en Estados Unidos no regresar de momento',
                'abstract'  => htmlspecialchars('<p>La Secretaría de Relaciones Exteriores pidió a los mexicanos que residen de manera permanente en el extranjero, en especial en Estados Unidos, “evitar todo tipo de desplazamiento internacional, incluido México”.</p>',ENT_QUOTES),
                'context'   => htmlentities('<p><strong>CDMX</strong>.- <strong>México </strong>generalmente recibe con los brazos abiertos a sus <strong>migrantes </strong>que viven en <strong>Estados Unidos</strong>, en parte porque los dólares que envían a sus hogares sostienen la economía. Sin embargo, ahora el gobierno los ha exhortado a que no vengan debido al peligro de que propaguen el <strong>coronavirus</strong>.</p>'),
                'url'       => 'mexico_pide_a_sus_migrantes_en_estados_unidos_no_regresar_de_momento',
                'img'       => 'ap20093140122968_1.jpg'
            ],
            [
                'id'        => 3,
                'new_type'  => 1,
                'title'     => 'Ciudad en China prohíbe comer animales silvestres para evitar nuevas pandemias',
                'abstract'  => htmlspecialchars('<p>Además de víboras, lagartos y otros animales silvestres, también se prohíbe por motivos humanitarios el consumo de carne de perro y gato, que por mucho tiempo ha sido una especialidad local.</p>',ENT_QUOTES),
                'context'   => htmlentities('<p><strong>Beijing</strong>.- La ciudad china de <strong>Shenzhen </strong>ha prohibido comer animales silvestres con el fin de impedir futuras epidemias como la actual pandemia de <strong>COVID-19</strong>.</p><p>El origen del virus, detectado por primera vez en diciembre en la ciudad de <strong>Wuhan</strong>, en el centro de <strong>China</strong>, fue rastreado hasta un mercado de alimentos local donde se vendían animales silvestres tales como pangolines y civetas, además de alimentos más convencionales como pollo y pescado.</p>'),
                'url'       => 'mexico_pide_a_sus_migrantes_en_estados_unidos_no_regresar_de_momento',
                'img'       => 'ap20093099490970_1.jpg_1719194250.webp'
            ],
            [
                'id'        => 4,
                'new_type'  => 1,
                'title'     => 'Confirman a 2 médicos con Covid-19 en Aguascalientes',
                'abstract'  => htmlspecialchars('<p>El titular del ISSEA, Miguel Ángel Piza Jiménez, mencionó que también se tienen otros casos sospechosos entre personal médico.</p>',ENT_QUOTES),
                'context'   => htmlentities('<p><strong>Aguascalientes</strong>.- El<strong> Instituto de Servicios de Salud del Estado (ISSEA)</strong> confirmó que hay dos médicos con <strong>Covid-19 en Aguascalientes</strong>; uno pertenece al sector salud y otro a un hospital privado.</p><p>El titular del <strong>ISSEA</strong>, <strong>Miguel Ángel Piza Jiménez</strong>, mencionó que también se tienen otros casos sospechosos entre personal médico.</p>'),
                'url'       => 'Confirman-a-2-medicos-con-Covid-19-en-Aguascalientes',
                'img'       => 'tunel_1.jpg_1172152852.webp'
            ],
            [
                'id'        => 5,
                'new_type'  => 1,
                'title'     => 'Supera Italia 13 mil fallecidos, con una jornada de 700 muertos',
                'abstract'  => htmlspecialchars('<p>En las última 24 horas, el Gobierno italiano reporta 3 mil nuevos contagios, y extiende al 13 de abril las medidas restrictivas.</p>',ENT_QUOTES),
                'context'   => htmlentities('<p><strong>Roma, Italia.- </strong>Luego de una pequeña alegría al tener miles de recuperados, <span style="background-color:#1abc9c;">Italia vuelve a caer</span>.</p><p>En las últimas 24 horas,&nbsp;<span style="background-color:#1abc9c;">casi 3 mil nuevos contagios del nuevo </span><span style="background-color:#1abc9c;">coronavirus</span><span style="background-color:#1abc9c;">&nbsp;se reportaron</span>, además de más de que 700 personas fallecieron, lo que lleva a <span style="background-color:#1abc9c;">superar el umbral de 13 mil víctimas mortales</span>, según los últimos datos dados a conocer hoy por el jefe de Protección Civil, <strong>Angelo Borrelli</strong>.</p>'),
                'url'       => 'Supera-Italia-13-mil-fallecidos-con-una-jornada-de-700-muertos',
                'img'       => 'supera_italia_13_mil_fallecidosx_con_una_jornada_de_700_muertos.jpg_63530811.webp'
            ]

        ];

        foreach ( $data as $dd )
        {
            $new = News::find($dd['id']);

            if ( !isset($new->id) )
                News::create($dd);
        }
    }
}
