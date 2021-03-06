﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Clinica_Frba.ClasesDatosTablas
{
    public class Afiliado
    {
        public long afil_numero  { get; set; }
        public long afil_usuario { get; set; }
        public string afil_nombre { get; set; }
        public string afil_apellido { get; set; }
        public long afil_tipo_doc { get; set; }
        public long afil_dni { get; set; }
        public string afil_direccion { get; set; }
        public long afil_telefono { get; set; }
        public string afil_mail { get; set; }
        public DateTime afil_nacimiento { get; set; }
        public string afil_sexo { get; set; }
        public long afil_estado_civil { get; set; }
        public int afil_cant_hijos { get; set; }
        public int afil_cant_fam_a_cargo { get; set; }
        public long afil_id_plan_medico { get; set; }
        public int afil_activo { get; set; }
    }
}
