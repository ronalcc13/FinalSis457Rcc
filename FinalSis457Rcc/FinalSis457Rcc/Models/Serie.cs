﻿using System;
using System.Collections.Generic;

namespace FinalSis457Rcc.Models;

public partial class Serie
{
    public int Id { get; set; }

    public string Titulo { get; set; } = null!;

    public string Sinopsis { get; set; } = null!;

    public string Director { get; set; } = null!;

    public int Duracion { get; set; }

    public DateTime FechaEstreno { get; set; }

    public string UsuarioRegistro { get; set; } = null!;

    public bool? RegistroActivo { get; set; }
}
