--Select Top 100 COUNT(Distinct Paciente_Dni),Paciente_Mail from gd_esquema.Maestra group by Paciente_Mail order by 1 desc
--Select Paciente_Direccion,Paciente_Dni,Paciente_Apellido,Paciente_Nombre from gd_esquema.Maestra group by Paciente_Direccion,Paciente_Dni,Paciente_Apellido,Paciente_Nombre having Paciente_Direccion in (SELECT Paciente_Direccion FROM (Select Paciente_Direccion,Paciente_Dni from gd_esquema.Maestra group by Paciente_Direccion,Paciente_Dni) as a group by a.Paciente_Direccion having COUNT(*)=2 )--Where Paciente_Mail='paz_L�pez@gmail.com')
--Select Top 100 COUNT(Distinct Paciente_Nombre),Paciente_Dni from gd_esquema.Maestra group by Paciente_Dni order by 1 desc
--SELECT Paciente_Dni from gd_esquema.Maestra group by Paciente_Dni

--Select * from SIGKILL.usuario
--Select * from SIGKILL.afiliado where afil_usuario=6
--SELECT MAX(bonof_id)+1 as next FROM SIGKILL.bono_farmacia
--Insert into SIGKILL.afiliado(afil_numero,afil_nombre,) VAlues (102),(103),(104)
--SELECT COUNT(DISTINCT ROUND(afil_numero/100,0)),SIGKILL.getNextNumeroAfiliado() FROM SIGKILL.afiliado
--SELECT distinct Medico_Dni,Medico_Nombre,Medico_Apellido,Medico_Direccion,Medico_Telefono,Medico_Mail,Medico_Fecha_Nac
--from gd_esquema.Maestra WHERE Medico_Dni is Not null
--Select * from GD2C2013.SIGKILL.profesional
--Select Distinct Plan_Med_Codigo,Plan_Med_Descripcion,Plan_Med_Precio_Bono_Consulta,Plan_Med_Precio_Bono_Farmacia from gd_esquema.Maestra order by Plan_Med_Codigo
--Select DISTINCT Turno_Numero,afil_numero,Turno_Fecha,pro_id from gd_esquema.Maestra,SIGKILL.afiliado,SIGKILL.profesional WHERE Turno_Numero is not null AND afil_dni=Paciente_Dni AND pro_dni=Medico_Dni ORDER BY Turno_Fecha 
--Select top 1000 * from SIGKILL.turno
--Select DISTINCT Especialidad_Codigo,Especialidad_Descripcion,Tipo_Especialidad_Codigo from gd_esquema.Maestra WHERE Especialidad_Codigo is not null order by Especialidad_Codigo
--Select DISTINCT Tipo_Especialidad_Codigo,Tipo_Especialidad_Descripcion from gd_esquema.Maestra WHERE Tipo_Especialidad_Codigo is not null order by Tipo_Especialidad_Codigo
--Select Paciente_Dni,Turno_Numero,Turno_Fecha,Consulta_Sintomas,Consulta_Enfermedades,Bono_Consulta_Numero,Bono_Consulta_Fecha_Impresion,Bono_farmacia_Numero,Bono_Farmacia_Fecha_Impresion,Bono_Farmacia_Fecha_Vencimiento,Bono_Farmacia_Medicamento from gd_esquema.Maestra Where Consulta_Sintomas is not null 
--Select DISTINCT Consulta_Sintomas,Consulta_Enfermedades from GD2C2013.gd_esquema.Maestra Where Consulta_Sintomas is not null 
--(SELECT DISTINCT usr_id,(SELECT Count(*) from (Select M2.Paciente_Dni from GD2C2013.gd_esquema.Maestra as M2 WHERE M.Paciente_Dni<=M2.Paciente_Dni group by M2.Paciente_Dni) as a) *100 + 1 as numero_afil,Paciente_Nombre,Paciente_Apellido,Paciente_Dni,Paciente_Direccion,Paciente_Telefono,Paciente_Mail,Plan_Med_Codigo FROM GD2C2013.gd_esquema.Maestra as M INNER JOIN GD2C2013.SIGKILL.usuario ON (usr_usuario=('u'+CONVERT(nvarchar,Paciente_Dni))))
--SELECT * from gd_esquema.Maestra WHERE Bono_Consulta_Numero=Bono_Farmacia_Numero
--SELECT GETDATE(),* FROM gd_esquema.Maestra,SIGKILL.afiliado WHERE afil_dni=Paciente_Dni AND Bono_Consulta_Numero is not null and  Consulta_Sintomas is null ORDER BY Compra_Bono_Fecha 
--SELECT Bono_Consulta_Numero,afil_numero,GETDATE(),Plan_Med_Codigo,2,Plan_Med_Precio_Bono_Consulta FROM gd_esquema.Maestra,SIGKILL.afiliado WHERE afil_dni=Paciente_Dni AND Bono_Consulta_Numero is not null and  Consulta_Sintomas is null
--SELECT * FROM gd_esquema.Maestra,SIGKILL.afiliado WHERE afil_dni=Paciente_Dni AND Bono_Farmacia_Numero is not null and  Consulta_Sintomas is null
--SELECT * FROM gd_esquema.Maestra as M,gd_esquema.Maestra as M2 WHERE M2.Bono_Farmacia_Numero is not null and M.Bono_Consulta_Numero is not null and M.Bono_Consulta_Numero=M2.Bono_Farmacia_Numero
--select Item from SIGKILL.SplitString('COMPLEJO B+DEXAMETASONA+LIDOCAINA SOL INY 3AMP', '+') 
--SELECT DISTINCT Bono_Farmacia_Medicamento from gd_esquema.Maestra WHERE Bono_Farmacia_Medicamento is not null 
--SELECT func_id,func_descripcion FROM SIGKILL.funcionalidad inner join SIGKILL.func_rol on(func_id=frol_funcionalidad) Where frol_rol=9
--SELECT * FROM SIGKILL.bono_consulta WHERE bonoc_consumido=1 and bonoc_afiliado=628101 order by bonoc_nro_consulta_individual
--UPDATE SIGKILL.bono_consulta
--SET bonoc_nro_consulta_individual=(SELECT COUNT(*) FROM SIGKILL.bono_consulta as bc2 WHERE bc2.bonoc_afiliado=bc1.bonoc_afiliado AND bc2.bonoc_fecha_compra<=bc1.bonoc_fecha_compra AND bc2.bonoc_consumido=1 )
--from SIGKILL.bono_consulta as bc1
--WHERE bc1.bonoc_consumido=1

SELECT DISTINCT trn_id, trn_fecha_hora 
FROM SIGKILL.turno
WHERE DATEPART(dw, trn_fecha_hora ) = 6
ORDER BY trn_fecha_hora