unit clases;

interface

uses
   Windows, UTipos, Forms, menu, db, dbgrids;

type
   TFunc = function(llave, servidor, ruta, basededatos : string) : longint; stdcall;
   
function clase(objeto : string) : TFormClass; forward;overload;
function clase(objeto : string; fuente : TDBGrid) : boolean; forward;overload;
procedure comando(valor : string); forward;




const
   HuellaDLL = 'awrHuella.dll';
   RegistrarHuella : String = 'awr_registrar_huella';

implementation

uses
   Dialogs,
   SysUtils,
   ShellApi,
   reglas_de_negocios,
   capturar_configuracion_menu,
   capturar_formas_estatus,
   capturar_iconos_menu,
   capturar_tipos_de_formas,
   explorar_tipos_de_formas,
   capturar_relacion_botones,
   explorar_relacion_botones,
   explorar_botones,
   capturar_botones,
   UfrmDiccionario,
   mantenimientoDiccionario,
   UfrmFormasEstatus,
   capturar_empresa,
   capturar_entidad_geografica,
   capturar_monedas,
   explorar_monedas,
   explorar_tipo_de_ctas,
   capturar_tipo_de_ctas,
   capturar_condiciones_comerciales,
   explorar_condiciones_comerciales,
   explorar_bancos,
   capturar_bancos,
   explorar_clasificaciones,
   capturar_clasificaciones,
   explorar_tabuladores,
   explorar_tabulador_nlp,
   capturar_tabuladores,
   capturar_grupos_tabulador,
   explorar_grupos_tabulador,


   {

   scripts,
   MAIL,
   explorar_pos,
   explorar_surtimiento,
   UfrmSurtimientoListaEmpaque,
   UfrmSurtimiento,
   capturar_mensajes,
   explorar_mensajes,
   capturar_colores,
   capturar_CIE10,
   explorar_CIE10,
   capturar_cirugias,
   capturar_diagnosticos,
   capturar_habitaciones,
   explorar_cirugias,
   explorar_diagnosticos,
   explorar_habitaciones,
   explorar_cuenta_paciente,
   UfrmConfiguracionPOS,
   UfrmPOSAbarrotes,
   UfrmRegistroDePacientes,
   capturar_prepolizas,
   explorar_prepolizas,
   UfrmPI_ReCotizar,
   UfrmCarteleraAlmacen,
   capturar_cxc_dep_y_ant,
   explorar_cxc_dep_y_ant,
   capturar_tentrega,
   explorar_tentrega,
   capturar_zonas,
   explorar_zonas,
   UfrmProcesos_Impresos,
   capturar_entradas,
   capturar_materiales_pi,
   explorar_materiales_pi,
   UfrmCapturar_PI_Rubros,
   UfrmODS_Bitacora,
   UfrmVisor_OrdenesDeProduccion,
   capturar_lista_precios_cliente,
   capturar_orden_de_servicio,
   explorar_orden_de_servicio,
   capturar_gfh,
   explorar_gfh,
   capturar_especialidades,
   explorar_especialidades,
   capturar_fallas,
   explorar_fallas,
   capturar_tecnicos,
   explorar_tecnicos,
   explorar_cupones_dados,
   explorar_vales_y_cupones,
   UfrmSeguimiento_Pagos,
   UfrmSeguimiento_Cobranza,
   UfrmProyeccion_Cobranza,
   UfrmProyeccion_Pagos,
   explorar_extensiones,
   capturar_despachador,
   explorar_despachador,
   UfrmVisor_PedidosDeCompra,
   capturar_presentaciones,
   explorar_presentaciones,
   UfrmMedidasGrupos,
   capturar_mps,
   explorar_mps,
   capturar_tareas,
   explorar_tareas,
   capturar_grupos_colores,
   explorar_grupos_colores,
   capturar_presupuestos,
   capturar_prensa_plana_cajas,
   explorar_presupuestos,
   capturar_procesos_impresos,
   capturar_monedero_electronico,
   explorar_monedero_electronico,
   capturar_motor_me,
   explorar_motor_me,
   capturar_eventos,
   explorar_eventos,
   Capturar_Pedimento_Importacion,
   Capturar_Conceptos_Gastos,
   explorar_pedimento_importacion,
   explorar_conceptos_gastos,
   capturar_polizas_garantia,
   explorar_polizas_garantia,
   UfrmReporteGralesSalidas,
   UfrmChequesGirados,
   UfrmCuentasPorPagar,
   UfrmCupones,
   UfrmCuentasPorCobrar,
   UfrmEstadoDeCuentas,
   explorar_cupones,
   UfrmComisionVendedores,
   explorar_comision_vendedores,
   capturar_lista_precios,
   explorar_lista_precios,
   capturar_ofertas,
   explorar_ofertas,
   UfrmKardex,
   UfrmInventarios,
   UfrmReporteGralesEntradas,
   explorar_colores,
   UfrmLineas,
   UfrmMedidas,
   UfrmMovimientosDeInventario,
   generar_reporte_lista_de_precios,
   explorar_movimientos_de_inventario,
   capturar_tipos_de_salida,
   explorar_tipos_de_salida,
   capturar_tipos_de_entrada,
   explorar_tipos_de_entrada,
   capturar_seguimiento_cobranza,
   capturar_notas_de_cargos,
   explorar_notas_de_cargo,
   capturar_movimientos_clasificados,
   capturar_movimientos,
   capturar_cierrediario,
   capturar_reportes_extras,
   FR_DESIGN,
   capturar_chequeras,
   explorar_chequeras,
   capturar_notas_de_credito,
   explorar_notas_de_credito,
   explorar_anticipos_proveedores,
   explorar_anticipos,
   capturar_anticipos,
   capturar_anticipos_proveedores,
   capturar_conceptos_descuentos,
   explorar_conceptos_descuentos_nc,
   capturar_rutas,
   explorar_rutas,
   capturar_colectas_pagos,
   explorar_colectas_pagos,
   capturar_cheques,
   explorar_punto_de_ventas_reporteador,
   capturar_colectas,
   explorar_colectas,
   explorar_cobro_pacientes,
   explorar_punto_de_ventas,
   capturar_nombre_lista_precios,
   explorar_nombre_lista_precios,
   explorar_grupos_materiales,
   capturar_grupos_materiales,
   explorar_calidades,
   capturar_calidades,
   capturar_preconfiguracion_touchscreen,
   explorar_preconfiguracion_touchScreen,
   capturar_punto_de_ventas,
   capturar_cajas,
   explorar_cajas,
   capturar_facturas,
   explorar_facturas,
   capturar_cuenta_paciente,
   capturar_pedidos,
   capturar_consumos,
   capturar_cotizaciones,
   explorar_pedidos,
   explorar_consumos,
   explorar_cotizaciones,
   explorar_cotizaciones_estatus,
   capturar_preferencias,
   explorar_usuarios,
   capturar_usuarios,
   explorar_vendedores,
   capturar_vendedores,
   explorar_departamentos,
   capturar_departamentos,
   explorar_financiamientos,
   capturar_financiamientos,
   explorar_promociones,
   capturar_promociones,
   explorar_compradores,
   capturar_compradores,
   explorar_transportistas,
   capturar_transportistas,
   explorar_remitentes,
   capturar_remitentes,
   explorar_clientes,
   capturar_clientes,
   explorar_proveedores,
   capturar_proveedores,
   explorar_almacenes,
   capturar_almacenes,
   explorar_unidades,
   capturar_unidades,
   explorar_materiales,
   capturar_materiales,
   explorar_requisiciones,
   capturar_requisiciones,
   explorar_requisiciones_cot,
   capturar_requisicion_cotizaciones,
   explorar_ordenes_de_compras,
   capturar_ordenes_de_compras,
   explorar_desempaques,
   capturar_desempaques,
   explorar_notas_de_entrada,
   }
   IBModulo;


procedure WinExecNoWait32(FileName:String; Visibility : integer);
{Ejectuta el programa y espera a que termine.
Las opciones de visibilidad son las típicas
en estos casos: SW_HIDE, SW_MAXIMIZE, SW_MINIMIZE, SW_RESTORE,
                SW_SHOW, SW_SHOWDEFAULT, SW_SHOWMAXIMIZED,
                SW_SHOWMINIMIZED, SW_SHOWMINNOACTIVE, SW_SHOWNA,
                SW_SHOWNOACTIVATE, SW_SHOWNORMAL
                Si necesitas más información sobre estas opciones
                busca la función ShowWindow en la ayuda del Api de
                Windows}
var
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
begin
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);

  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  {
  CreateProcess(nil,
    zAppName,
    nil,
    nil,
    false,
    CREATE_NEW_CONSOLE or
    NORMAL_PRIORITY_CLASS,
    nil,
    nil,
    StartupInfo,
    ProcessInfo);
    }
end;

function clase(objeto : string; fuente : TDBGrid) : boolean;
var
   tmp : boolean;
begin

   tmp := false;
   objeto := UpperCase(objeto);

   if objeto = 'FRMCAPTURAR_TIPOS_DE_FORMAS' then
   begin
      Application.CreateForm(TfrmCapturar_tipos_de_formas, frmCapturar_tipos_de_formas);
      frmCapturar_tipos_de_formas.Grid := fuente;
      frmCapturar_tipos_de_formas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_BOTONES' then
   begin
      Application.CreateForm(TfrmCapturar_botones, frmCapturar_botones);
      frmCapturar_botones.Grid := fuente;
      frmCapturar_botones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_RELACION_BOTONES' then
   begin
      Application.CreateForm(TfrmCapturar_relacion_botones, frmCapturar_relacion_botones);
      frmCapturar_relacion_botones.Grid := fuente;
      frmCapturar_relacion_botones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_MONEDAS' then
   begin
      Application.CreateForm(TfrmCapturar_monedas, frmCapturar_monedas);
      frmCapturar_monedas.Grid := fuente;
      frmCapturar_monedas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TIPO_DE_CTAS' then
   begin
      Application.CreateForm(TfrmCapturar_tipo_de_ctas, frmCapturar_tipo_de_ctas);
      frmCapturar_tipo_de_ctas.Grid := fuente;
      frmCapturar_tipo_de_ctas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CONDICIONES_COMERCIALES' then
   begin
      Application.CreateForm(TfrmCapturar_condiciones_comerciales, frmCapturar_condiciones_comerciales);
      frmCapturar_condiciones_comerciales.Grid := fuente;
      frmCapturar_condiciones_comerciales.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_BANCOS' then
   begin
      Application.CreateForm(TfrmCapturar_bancos, frmCapturar_bancos);
      frmCapturar_bancos.Grid := fuente;
      frmCapturar_bancos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CLASIFICACIONES' then
   begin
      Application.CreateForm(TfrmCapturar_clasificaciones, frmCapturar_clasificaciones);
      frmCapturar_clasificaciones.Grid := fuente;
      frmCapturar_clasificaciones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TABULADORES' then
   begin
      Application.CreateForm(TfrmCapturar_tabuladores, frmCapturar_tabuladores);
      frmCapturar_tabuladores.Grid := fuente;
      frmCapturar_tabuladores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_GRUPOS_TABULADOR' then
   begin
      Application.CreateForm(TfrmCapturar_grupos_tabulador, frmCapturar_grupos_tabulador);
      frmCapturar_grupos_tabulador.GRID := fuente;
      frmCapturar_grupos_tabulador.Show;
      tmp := true;
   end
   else
   begin
   end;

   {
   if objeto = 'FRMCAPTURAR_CIE10' then
   begin
      Application.CreateForm(TfrmCapturar_CIE10, frmCapturar_CIE10);
      frmCapturar_CIE10.GRID := fuente;
      frmCapturar_CIE10.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CIRUGIAS' then
   begin
      Application.CreateForm(TfrmCapturar_cirugias, frmCapturar_cirugias);
      frmCapturar_cirugias.GRID := fuente;
      frmCapturar_cirugias.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_DIAGNOSTICOS' then
   begin
      Application.CreateForm(TfrmCapturar_diagnosticos, frmCapturar_diagnosticos);
      frmCapturar_diagnosticos.GRID := fuente;
      frmCapturar_diagnosticos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_HABITACIONES' then
   begin
      Application.CreateForm(TfrmCapturar_habitaciones, frmCapturar_habitaciones);
      frmCapturar_habitaciones.GRID := fuente;
      frmCapturar_habitaciones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PREPOLIZAS' then
   begin
      Application.CreateForm(TfrmCapturar_prepolizas, frmCapturar_prepolizas);
      frmCapturar_prepolizas.GRID := fuente;
      frmCapturar_prepolizas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CXC_DEP_Y_ANT' then
   begin
      Application.CreateForm(TfrmCapturar_cxc_dep_y_ant, frmCapturar_cxc_dep_y_ant);
      frmCapturar_cxc_dep_y_ant.GRID := fuente;
      frmCapturar_cxc_dep_y_ant.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TENTREGA' then
   begin
      Application.CreateForm(TfrmCapturar_tentrega, frmCapturar_tentrega);
      frmCapturar_tentrega.GRID := fuente;
      frmCapturar_tentrega.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ZONAS' then
   begin
      Application.CreateForm(TfrmCapturar_zonas, frmCapturar_zonas);
      frmCapturar_zonas.GRID := fuente;
      frmCapturar_zonas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_MATERIALES_PI' then
   begin
      Application.CreateForm(TfrmCapturar_Materiales_PI, frmCapturar_Materiales_PI);
      frmCapturar_Materiales_PI.GRID := fuente;
      frmCapturar_Materiales_PI.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_DESPACHADOR' then
   begin
      Application.CreateForm(TfrmCapturar_Despachador, frmCapturar_Despachador);
      frmCapturar_Despachador.GRID := fuente;
      frmCapturar_Despachador.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PRESENTACIONES' then
   begin
      Application.CreateForm(TfrmCapturar_presentaciones, frmCapturar_presentaciones);
      frmCapturar_presentaciones.GRID := fuente;
      frmCapturar_presentaciones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_MPS' then
   begin
      Application.CreateForm(TfrmCapturar_mps, frmCapturar_mps);
      frmCapturar_mps.GRID := fuente;
      frmCapturar_mps.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TAREAS' then
   begin
      Application.CreateForm(TfrmCapturar_tareas, frmCapturar_tareas);
      frmCapturar_tareas.GRID := fuente;
      frmCapturar_tareas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_GRUPOS_COLORES' then
   begin
      Application.CreateForm(TfrmCapturar_grupos_colores, frmCapturar_grupos_colores);
      frmCapturar_grupos_colores.GRID := fuente;
      frmCapturar_grupos_colores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PPTOS' then
   begin
      Application.CreateForm(TfrmCapturar_PPTOS, frmCapturar_PPTOS);
      frmCapturar_PPTOS.GRID := fuente;
      frmCapturar_PPTOS.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PPC' then
   begin
      Application.CreateForm(TfrmCapturar_PPC, frmCapturar_PPC);
      frmCapturar_PPC.GRID := fuente;
      frmCapturar_PPC.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_MONEDERO_ELECTRONICO' then
   begin
      Application.CreateForm(TfrmCapturar_monedero_electronico, frmCapturar_monedero_electronico);
      frmCapturar_monedero_electronico.GRID := fuente;
      frmCapturar_monedero_electronico.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_MOTOR_ME' then
   begin
      Application.CreateForm(TfrmCapturar_motor_me, frmCapturar_motor_me);
      frmCapturar_motor_me.GRID := fuente;
      frmCapturar_motor_me.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_EVENTOS' then
   begin
      Application.CreateForm(TfrmCapturar_eventos, frmCapturar_eventos);
      frmCapturar_eventos.GRID := fuente;
      frmCapturar_eventos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PEDIMENTO_IMPORTACION' then
   begin
      Application.CreateForm(TfrmCapturar_Pedimento_Importacion, frmCapturar_Pedimento_Importacion);
      frmCapturar_Pedimento_Importacion.GRID := fuente;
      frmCapturar_Pedimento_Importacion.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CONCEPTOS_GASTOS' then
   begin
      Application.CreateForm(TfrmCapturar_Conceptos_Gastos, frmCapturar_Conceptos_Gastos);
      frmCapturar_Conceptos_Gastos.GRID := fuente;
      frmCapturar_Conceptos_Gastos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_POLIZAS_GARANTIA' then
   begin
      Application.CreateForm(TfrmCapturar_polizas_garantia, frmCapturar_polizas_garantia);
      frmCapturar_polizas_garantia.GRID := fuente;
      frmCapturar_polizas_garantia.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCUPONES' then
   begin
      frmCupones := TfrmCupones.Crear(Application, Fuente);
      frmCupones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_LISTA_PRECIOS' then
   begin
      Application.CreateForm(TfrmCapturar_lista_precios, frmCapturar_lista_precios);
      frmCapturar_lista_precios.Grid := fuente;
      frmCapturar_lista_precios.NLP  := frmExplorar_lista_precios.NLP;
      frmCapturar_lista_precios.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_LISTA_PRECIOS_CLIENTE' then
   begin
      Application.CreateForm(TfrmCapturar_Lista_Precios_Cliente, frmCapturar_Lista_Precios_Cliente);
      frmCapturar_Lista_Precios_Cliente.Grid := fuente;
      frmCapturar_Lista_Precios_Cliente.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_OFERTAS' then
   begin
      Application.CreateForm(TfrmCapturar_Ofertas, frmCapturar_ofertas);
      frmCapturar_ofertas.Grid := fuente;
      frmCapturar_ofertas.Load;
      frmCapturar_ofertas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_VENDEDORES' then
   begin
      Application.CreateForm(TfrmCapturar_vendedores, frmCapturar_vendedores);
      frmCapturar_vendedores.Grid := fuente;
      frmCapturar_vendedores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ALMACENES' then
   begin
      Application.CreateForm(TfrmCapturar_almacenes, frmCapturar_almacenes);
      frmCapturar_almacenes.Grid := fuente;
      frmCapturar_almacenes.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_MENSAJES' then
   begin
      Application.CreateForm(TfrmCapturar_mensajes, frmCapturar_mensajes);
      frmCapturar_mensajes.Grid := fuente;
      frmCapturar_mensajes.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_COLORES' then
   begin
      Application.CreateForm(TfrmCapturar_colores, frmCapturar_colores);
      frmCapturar_colores.Grid := fuente;
      frmCapturar_colores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCOMISIONVENDEDORES' then
   begin
      frmComisionVendedores := TfrmComisionVendedores.Crear(Application, Fuente);// Crear(Application, StrToInt(edID.Text));
      frmComisionVendedores.USUARIO := reglas.dame_usuario;
      frmComisionVendedores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMMOVIMIENTOSDEINVENTARIO' then
   begin
      frmMovimientosDeInventario := TfrmMovimientosDeInventario.Crear(Application, Fuente, reglas.dame_usuario);
      frmMovimientosDeInventario.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TIPOS_DE_SALIDA' then
   begin
      Application.CreateForm(TfrmCapturar_tipos_de_salida, frmCapturar_tipos_de_salida);
      frmCapturar_tipos_de_salida.Grid := fuente;
      frmCapturar_tipos_de_salida.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TIPOS_DE_ENTRADA' then
   begin
      Application.CreateForm(TfrmCapturar_tipos_de_entrada, frmCapturar_tipos_de_entrada);
      frmCapturar_tipos_de_entrada.Grid := fuente;
      frmCapturar_tipos_de_entrada.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_NOTAS_DE_CARGO' then
   begin
      Application.CreateForm(TfrmCapturar_notas_de_cargo, frmCapturar_notas_de_cargo);
      frmCapturar_notas_de_cargo.Grid := fuente;
      frmCapturar_notas_de_cargo.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CHEQUERAS' then
   begin
      Application.CreateForm(TfrmCapturar_chequeras, frmCapturar_chequeras);
      frmCapturar_chequeras.Grid := fuente;
      frmCapturar_chequeras.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_NOTAS_DE_CREDITO' then
   begin
      Application.CreateForm(TfrmCapturar_notas_de_credito, frmCapturar_notas_de_credito);
      frmCapturar_notas_de_credito.Grid := fuente;
      frmCapturar_notas_de_credito.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ANTICIPOS' then
   begin
      Application.CreateForm(TfrmCapturar_anticipos, frmCapturar_anticipos);
      frmCapturar_anticipos.Grid := fuente;
      frmCapturar_anticipos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ANTICIPOS_PROVEEDORES' then
   begin
      Application.CreateForm(TfrmCapturar_anticipos_proveedores, frmCapturar_anticipos_proveedores);
      frmCapturar_anticipos_proveedores.Grid := fuente;
      frmCapturar_anticipos_proveedores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CONCEPTOS_DESCUENTOS' then
   begin
      Application.CreateForm(TfrmCapturar_conceptos_descuentos, frmCapturar_conceptos_descuentos);
      frmCapturar_conceptos_descuentos.Grid := fuente;
      frmCapturar_conceptos_descuentos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_RUTAS' then
   begin
      Application.CreateForm(TfrmCapturar_rutas, frmCapturar_rutas);
      frmCapturar_rutas.Grid := fuente;
      frmCapturar_rutas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_COLECTAS_PAGOS' then
   begin
      Application.CreateForm(TfrmCapturar_colectas_pagos, frmCapturar_colectas_pagos);
      frmCapturar_colectas_pagos.Grid := fuente;
      frmCapturar_colectas_pagos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_COLECTAS' then
   begin
      Application.CreateForm(TfrmCapturar_colectas, frmCapturar_colectas);
      frmCapturar_colectas.Grid := fuente;
      frmCapturar_colectas.ALMACEN  := frmExplorar_colectas.dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger;
      frmCapturar_colectas.ALMACEN_ := frmExplorar_colectas.dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN_CLAVE').AsString;
      frmCapturar_colectas.CAJA     := frmExplorar_colectas.dsVer_Datos_Cajero.DataSet.FieldByName('R_ID').AsInteger;
      frmCapturar_colectas.CAJA_    := frmExplorar_colectas.dsVer_Datos_Cajero.DataSet.FieldByName('R_NOMBRE').AsString;
      frmCapturar_colectas.USUARIO  := frmExplorar_colectas.dsVer_Datos_Cajero.DataSet.FieldByName('R_USUARIO').AsInteger;
      frmCapturar_colectas.USUARIO_ := frmExplorar_colectas.dsVer_Datos_Cajero.DataSet.FieldByName('R_NOMBRE_USUARIO').AsString;
      frmCapturar_colectas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_NOMBRE_LISTA_PRECIOS' then
   begin
      Application.CreateForm(TfrmCapturar_nombre_lista_precios, frmCapturar_nombre_lista_precios);
      frmCapturar_nombre_lista_precios.Grid := fuente;
      frmCapturar_nombre_lista_precios.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_GRUPOS_MATERIALES' then
   begin
      Application.CreateForm(TfrmCapturar_grupos_materiales, frmCapturar_grupos_materiales);
      frmCapturar_grupos_materiales.Grid := fuente;
      frmCapturar_grupos_materiales.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CALIDADES' then
   begin
      Application.CreateForm(TfrmCapturar_calidades, frmCapturar_calidades);
      frmCapturar_calidades.Grid := fuente;
      frmCapturar_calidades.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_USUARIOS' then
   begin
      Application.CreateForm(TfrmCapturar_usuarios, frmCapturar_usuarios);
      frmCapturar_usuarios.Grid := fuente;
      frmCapturar_usuarios.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_DEPARTAMENTOS' then
   begin
      Application.CreateForm(TfrmCapturar_departamentos, frmCapturar_departamentos);
      frmCapturar_departamentos.Grid := fuente;
      frmCapturar_departamentos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_FINANCIAMIENTOS' then
   begin
      Application.CreateForm(TfrmCapturar_financiamientos, frmCapturar_financiamientos);
      frmCapturar_financiamientos.Grid := fuente;
      frmCapturar_financiamientos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PROMOCIONES' then
   begin
      Application.CreateForm(TfrmCapturar_promociones, frmCapturar_promociones);
      frmCapturar_promociones.Grid := fuente;
      frmCapturar_promociones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_COMPRADORES' then
   begin
      Application.CreateForm(TfrmCapturar_compradores, frmCapturar_compradores);
      frmCapturar_compradores.Grid := fuente;
      frmCapturar_compradores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TRANSPORTISTAS' then
   begin
      Application.CreateForm(TfrmCapturar_transportistas, frmCapturar_transportistas);
      frmCapturar_transportistas.Grid := fuente;
      frmCapturar_transportistas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_REMITENTES' then
   begin
      Application.CreateForm(TfrmCapturar_remitentes, frmCapturar_remitentes);
      frmCapturar_remitentes.Grid := fuente;
      frmCapturar_remitentes.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_FALLAS' then
   begin
      Application.CreateForm(TfrmCapturar_fallas, frmCapturar_fallas);
      frmCapturar_fallas.Grid := fuente;
      frmCapturar_fallas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ORDEN_DE_SERVICIO' then
   begin
      Application.CreateForm(TfrmCapturar_orden_de_servicio, frmCapturar_orden_de_servicio);
      frmCapturar_orden_de_servicio.Grid := fuente;
      frmCapturar_orden_de_servicio.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_GFH' then
   begin
      Application.CreateForm(TfrmCapturar_gfh, frmCapturar_gfh);
      frmCapturar_gfh.Grid := fuente;
      frmCapturar_gfh.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ESPECIALIDADES' then
   begin
      Application.CreateForm(TfrmCapturar_especialidades, frmCapturar_especialidades);
      frmCapturar_especialidades.Grid := fuente;
      frmCapturar_especialidades.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_TECNICOS' then
   begin
      Application.CreateForm(TfrmCapturar_tecnicos, frmCapturar_tecnicos);
      frmCapturar_tecnicos.Grid := fuente;
      frmCapturar_tecnicos.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CLIENTES' then
   begin
      Application.CreateForm(TfrmCapturar_clientes, frmCapturar_clientes);
      frmCapturar_clientes.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PROVEEDORES' then
   begin
      Application.CreateForm(TfrmCapturar_proveedores, frmCapturar_proveedores);
      frmCapturar_proveedores.Grid := fuente;
      frmCapturar_proveedores.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_UNIDADES' then
   begin
      Application.CreateForm(TfrmCapturar_unidades, frmCapturar_unidades);
      frmCapturar_unidades.Grid := fuente;
      frmCapturar_unidades.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_MATERIALES' then
   begin
      Application.CreateForm(TfrmCapturar_materiales, frmCapturar_materiales);
      frmCapturar_materiales.Grid := fuente;
      frmCapturar_materiales.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_REQUISICIONES' then
   begin
      Application.CreateForm(TfrmCapturar_requisiciones, frmCapturar_requisiciones);
      frmCapturar_requisiciones.Grid := fuente;
      frmCapturar_requisiciones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_REQUISICION_COTIZACIONES' then
   begin
      Application.CreateForm(TfrmCapturar_requisicion_cotizaciones, frmCapturar_requisicion_cotizaciones);
      frmCapturar_requisicion_cotizaciones.Grid := fuente;
      frmCapturar_requisicion_cotizaciones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ORDENES_DE_COMPRAS' then
   begin
      Application.CreateForm(TfrmCapturar_Ordenes_de_Compras, frmCapturar_Ordenes_de_Compras);
      frmCapturar_Ordenes_de_Compras.Grid := fuente;
      frmCapturar_Ordenes_de_Compras.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_DESEMPAQUES' then
   begin
      Application.CreateForm(TfrmCapturar_desempaques, frmCapturar_desempaques);
      frmCapturar_desempaques.Grid := fuente;
      frmCapturar_desempaques.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_ENTRADAS' then
   begin
      Application.CreateForm(TfrmCapturar_Entradas, frmCapturar_Entradas);
      frmCapturar_Entradas.Grid := fuente;
      frmCapturar_Entradas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CONSUMOS' then
   begin
      Application.CreateForm(TfrmCapturar_consumos, frmCapturar_consumos);
      frmCapturar_consumos.Grid := fuente;
      frmCapturar_consumos.Show;
      tmp := true;
   end   else
   if objeto = 'FRMCAPTURAR_COTIZACIONES' then
   begin
      Application.CreateForm(TfrmCapturar_cotizaciones, frmCapturar_cotizaciones);
      frmCapturar_cotizaciones.Grid := fuente;
      frmCapturar_cotizaciones.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CUENTA_PACIENTE' then
   begin
      Application.CreateForm(TfrmCapturar_cuenta_paciente, frmCapturar_cuenta_paciente);
      frmCapturar_cuenta_paciente.Grid := fuente;
      frmCapturar_cuenta_paciente.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PEDIDOS' then
   begin
      Application.CreateForm(TfrmCapturar_pedidos, frmCapturar_pedidos);
      frmCapturar_pedidos.Grid := fuente;
      frmCapturar_pedidos.Show;
      tmp := true;
   end
   else
   else
   if objeto = 'FRMCAPTURAR_FACTURAS' then
   begin
      Application.CreateForm(TfrmCapturar_facturas, frmCapturar_facturas);
      frmCapturar_facturas.Grid := fuente;
      frmCapturar_facturas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_CAJAS' then
   begin
      Application.CreateForm(TfrmCapturar_cajas, frmCapturar_cajas);
      frmCapturar_cajas.Grid := fuente;
      frmCapturar_cajas.Show;
      tmp := true;
   end
   else
   if objeto = 'FRMCAPTURAR_PRECONFIGURACION_TOUCHSCREEN' then
   begin
      Application.CreateForm(TfrmCapturar_preconfiguracion_touchScreen, frmCapturar_preconfiguracion_touchScreen);
      frmCapturar_preconfiguracion_touchScreen.Grid := fuente;
      frmCapturar_preconfiguracion_touchScreen.Show;
      tmp := true;
   end;
    }
   Result := tmp;
end;


function clase(objeto : string) : TFormClass;
var
   tmp : TFormClass;
   //frmCapturar_Lineas  : TfrmCapturar_Lineas;
   //frmMedidas          : TfrmMedidas;
   //frmReportesEntradas : TfrmReporteGralesEntradas;
   //frmReporteGralesSalidas :TfrmReporteGralesSalidas;
   //frmInventarios      : TfrmInventarios;

   HLibr     : THandle; //Puntero para la librería
   FuncPoint : TFarProc; //Puntero para la función
   MiFunc    : TFunc;
begin
   tmp := nil;
   objeto := UpperCase(objeto);
   if objeto = 'FRMCAPTURAR_CONFIGURACION_MENU' then
   begin
      frmCapturar_configuracion_menu := TfrmCapturar_configuracion_menu.Create(Application);
      frmCapturar_configuracion_menu.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_FORMAS_ESTATUS' then
   begin
      frmCapturar_Formas_Estatus := TfrmCapturar_Formas_Estatus.Create(Application);
      frmCapturar_Formas_Estatus.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_ICONOS_MENU' then
   begin
      frmCapturar_iconos_menu := TfrmCapturar_iconos_menu.Create(Application);
      frmCapturar_iconos_menu.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TIPOS_DE_FORMAS' then
   begin
      frmExplorar_tipos_de_formas := TfrmExplorar_tipos_de_formas.Create(Application);
      frmExplorar_tipos_de_formas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_BOTONES' then
   begin
      frmExplorar_botones := TfrmExplorar_botones.Create(Application);
      frmExplorar_botones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_RELACION_BOTONES' then
   begin
      frmExplorar_relacion_botones := TfrmExplorar_relacion_botones.Create(Application);
      frmExplorar_relacion_botones.Show;
   end
   else
   if objeto = 'FRMDICCIONARIO' then
   begin
      frmDiccionario := TfrmDiccionario.Create(Application);
      frmDiccionario.Show;
   end
   else
   if objeto = 'FRMMANTENIMIENTODICCIONARIO' then
   begin
      frmMantenimientoDiccionario := TfrmMantenimientoDiccionario.Create(Application);
      frmMantenimientoDiccionario.Show;
   end
   else
   if objeto = 'FRMFORMASESTATUS' then
   begin
      frmFormasEstatus := TfrmFormasEstatus.Create(Application);
      frmFormasEstatus.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_EMPRESA' then
   begin
      frmCapturar_empresa := TfrmCapturar_empresa.Create(Application);
      frmCapturar_empresa.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_ENTIDAD_GEOGRAFICA' then
   begin
      frmCapturar_entidad_geografica := TfrmCapturar_entidad_geografica.Create(Application);
      frmCapturar_entidad_geografica.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MONEDAS' then
   begin
      frmExplorar_monedas := TfrmExplorar_monedas.Create(Application);
      frmExplorar_monedas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TIPO_DE_CTAS' then
   begin
      frmExplorar_tipo_de_ctas := TfrmExplorar_tipo_de_ctas.Create(Application);
      frmExplorar_tipo_de_ctas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CONDICIONES_COMERCIALES' then
   begin
      frmExplorar_condiciones_comerciales := TfrmExplorar_condiciones_comerciales.Create(Application);
      frmExplorar_condiciones_comerciales.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_BANCOS' then
   begin
      frmExplorar_bancos := TfrmExplorar_bancos.Create(Application);
      frmExplorar_bancos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CLASIFICACIONES' then
   begin
      frmExplorar_clasificaciones := TfrmExplorar_clasificaciones.Create(Application);
      frmExplorar_clasificaciones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TABULADORES' then
   begin
      frmExplorar_tabuladores := TfrmExplorar_tabuladores.Create(Application);
      frmExplorar_tabuladores.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_GRUPOS_TABULADOR' then
   begin
      frmExplorar_grupos_tabulador := TfrmExplorar_grupos_tabulador.Create(Application);
      frmExplorar_grupos_tabulador.Show;
   end

   else
   begin
   end;

   {
   if objeto = 'FRMEXPLORAR_CIE10' then
   begin
      frmExplorar_CIE10 := TfrmExplorar_CIE10.Create(Application);
      frmExplorar_CIE10.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CIRUGIAS' then
   begin
      frmExplorar_cirugias := TfrmExplorar_cirugias.Create(Application);
      frmExplorar_cirugias.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_DIAGNOSTICOS' then
   begin
      frmExplorar_diagnosticos := TfrmExplorar_diagnosticos.Create(Application);
      frmExplorar_diagnosticos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_HABITACIONES' then
   begin
      frmExplorar_habitaciones := TfrmExplorar_habitaciones.Create(Application);
      frmExplorar_habitaciones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PREPOLIZAS' then
   begin
      frmExplorar_prepolizas := TfrmExplorar_prepolizas.Create(Application);
      frmExplorar_prepolizas.Show;
   end
   else
   if objeto = 'FRMPI_RECOTIZAR' then
   begin
      try
         frmPI_ReCotizar := TfrmPI_ReCotizar.Create(Application);
         frmPI_ReCotizar.DATABASE    := dmIBModulo.ibSistema;
         frmPI_ReCotizar.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
         frmPI_ReCotizar.USUARIO     := reglas.dame_usuario;
         frmPI_ReCotizar.ShowModal;
      finally
         frmPI_ReCotizar.Release;
      end;
   end
   else
   if objeto = 'FRMCARTELERAALMACEN' then
   begin
      try
         frmCarteleraAlmacen := TfrmCarteleraAlmacen.Create(Application);
         frmCarteleraAlmacen.DATABASE    := dmIBModulo.ibSistema;
         frmCarteleraAlmacen.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
         frmCarteleraAlmacen.Open;
         frmCarteleraAlmacen.ShowModal;
      finally
         frmCarteleraAlmacen.Release;
      end;
   end
   else
   if objeto = 'FRMHUELLADACTILAR' then
   begin
      HLibr := LoadLibrary (HuellaDLL); //Cargamos la librería
      if HLibr > 0 then
      begin
         try
            FuncPoint := GetProcAddress (HLibr, PChar (RegistrarHuella)); //Cargamos la función
            if FuncPoint <> nil then
            begin
               MiFunc := TFunc(FuncPoint); //Asignamos la función...
               MiFunc(reglas.dame_llave, reglas.dame_servidor, reglas.dame_ruta, reglas.dameDatabaseName); //y la ejecutamos
            end
            else
               ShowMessage ('No existe la función ' + RegistrarHuella);
         finally
            FreeLibrary (HLibr); //Liberamos la librería
         end
      end
      else
         ShowMessage ('No se ha encontrado la librería ' + HuellaDLL);
   end
   else
   if objeto = 'FRMEXPLORAR_CXC_DEP_Y_ANT' then
   begin
      frmExplorar_cxc_dep_y_ant := TfrmExplorar_cxc_dep_y_ant.Create(Application);
      frmExplorar_cxc_dep_y_ant.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TENTREGA' then
   begin
      frmExplorar_tentrega := TfrmExplorar_tentrega.Create(Application);
      frmExplorar_tentrega.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_ZONAS' then
   begin
      frmExplorar_zonas := TfrmExplorar_zonas.Create(Application);
      frmExplorar_zonas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MATERIALES_PI' then
   begin
      frmExplorar_materiales_pi := TfrmExplorar_materiales_pi.Create(Application);
      frmExplorar_materiales_pi.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_PI_RUBROS' then
   begin
      frmCapturar_PI_Rubros := TfrmCapturar_PI_Rubros.Create(Application);
      frmCapturar_PI_Rubros.Show;
   end
   else
   if objeto = 'FRMODS_BITACORA' then
   begin
      frmODS_Bitacora := TfrmODS_Bitacora.Create(Application);
      frmODS_Bitacora.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CUPONES_DADOS' then
   begin
      frmExplorar_cupones_dados := TfrmExplorar_cupones_dados.Create(Application);
      frmExplorar_cupones_dados.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_VALES' then
   begin
      frmExplorar_Vales := TfrmExplorar_Vales.Create(Application);
      frmExplorar_Vales.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_DESPACHADOR' then
   begin
      frmExplorar_Despachador := TfrmExplorar_Despachador.Create(Application);
      frmExplorar_Despachador.Show;
   end
   else
   if objeto = 'FRMVISOR_PEDIDOSDECOMPRA' then
   begin
      frmVisor_PedidosDeCompra             := TfrmVisor_PedidosDeCompra.Create(Application);
      frmVisor_PedidosDeCompra.DATABASE    := dmIBModulo.ibSistema;
      frmVisor_PedidosDeCompra.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
      frmVisor_PedidosDeCompra.ESTILO      := fsMDIChild;
      frmVisor_PedidosDeCompra.Show;
   end
   else
   if objeto = 'FRMVISOR_ORDENESDEPRODUCCION' then
   begin
      frmVisor_OrdenesDeProduccion             := TfrmVisor_OrdenesDeProduccion.Create(Application);
      frmVisor_OrdenesDeProduccion.DATABASE    := dmIBModulo.ibSistema;
      frmVisor_OrdenesDeProduccion.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
      frmVisor_OrdenesDeProduccion.NIVEL       := reglas.dameUsuarioNivel;
      frmVisor_OrdenesDeProduccion.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PRESENTACIONES' then
   begin
      frmExplorar_presentaciones := TfrmExplorar_presentaciones.Create(Application);
      frmExplorar_presentaciones.Show;
   end
   else
   if objeto = 'FRMMEDIDASGRUPOS' then
   begin
      frmMedidasGrupos := TfrmMedidasGrupos.Create(Application);
      frmMedidasGrupos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MPS' then
   begin
      frmExplorar_mps := TfrmExplorar_mps.Create(Application);
      frmExplorar_mps.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TAREAS' then
   begin
      frmExplorar_Tareas := TfrmExplorar_Tareas.Create(Application);
      frmExplorar_Tareas.Show;
   end
   else
   if objeto = 'FRMSCRIPTS' then
   begin
      frmScripts := TfrmScripts.Create(Application);
      frmScripts.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_GRUPOS_COLORES' then
   begin
      frmExplorar_grupos_colores := TfrmExplorar_grupos_colores.Create(Application);
      frmExplorar_grupos_colores.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PRESUPUESTOS' then
   begin
      frmExplorar_Presupuestos := TfrmExplorar_Presupuestos.Create(Application);
      frmExplorar_Presupuestos.Show;
   end
   else
   if objeto = 'FRMPROCESOS_IMPRESOS' then
   begin
      frmProcesos_Impresos := TfrmProcesos_Impresos.Create(Application);
      frmProcesos_Impresos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MONEDERO_ELECTRONICO' then
   begin
      frmExplorar_monedero_electronico := TfrmExplorar_monedero_electronico.Create(Application);
      frmExplorar_monedero_electronico.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MOTOR_ME' then
   begin
      frmExplorar_motor_me := TfrmExplorar_motor_me.Create(Application);
      frmExplorar_motor_me.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_EVENTOS' then
   begin
      frmExplorar_Eventos := TfrmExplorar_Eventos.Create(Application);
      frmExplorar_Eventos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PEDIMENTO_IMPORTACION' then
   begin
      frmExplorar_pedimento_importacion := TfrmExplorar_pedimento_importacion.Create(Application);
      frmExplorar_pedimento_importacion.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CONCEPTOS_GASTOS' then
   begin
      frmExplorar_Conceptos_Gastos := TfrmExplorar_Conceptos_Gastos.Create(Application);
      frmExplorar_Conceptos_Gastos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_POLIZAS_GARANTIA' then
   begin
      frmExplorar_polizas_garantia := TfrmExplorar_polizas_garantia.Create(Application);
      frmExplorar_polizas_garantia.Show;
   end
   else
   if objeto = 'FRMCHEQUESGIRADOS' then
   begin
      frmChequesGirados := TfrmChequesGirados.Create(Application);
      frmChequesGirados.Usuario := reglas.dame_usuario;
      frmChequesGirados.ID      := 0;
      frmChequesGirados.Show;
   end
   else
   if objeto = 'FRMCUENTASPORPAGAR' then
   begin
      frmCuentasPorPagar         := TfrmCuentasPorPagar.Create(Application);
      frmCuentasPorPagar.Usuario := reglas.dame_usuario;
      frmCuentasPorPagar.Nivel   := reglas.dameUsuarioNivel;
      frmCuentasPorPagar.Show;
   end
   else
   if objeto = 'FRMESTADODECUENTAS' then
   begin
      frmEstadoDeCuentas         := TfrmEstadoDeCuentas.Create(Application);
      frmEstadoDeCuentas.Tipo    := tfEstadoCtas;
      frmEstadoDeCuentas.Usuario := reglas.dame_usuario;
      frmEstadoDeCuentas.Nivel   := reglas.dameUsuarioNivel;
      frmEstadoDeCuentas.Show;
   end
   else
   if objeto = 'FRMCUENTASPORCOBRAR' then
   begin
      frmCuentasPorCobrar         := TfrmCuentasPorCobrar.Create(Application);
      frmCuentasPorCobrar.Tipo    := tfCXC;
      frmCuentasPorCobrar.Usuario := reglas.dame_usuario;
      frmCuentasPorCobrar.Nivel   := reglas.dameUsuarioNivel;
      frmCuentasPorCobrar.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CUPONES' then
   begin
      frmExplorar_cupones := TfrmExplorar_Cupones.Create(Application);
      frmExplorar_cupones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_COMISION_VENDEDORES' then
   begin
      frmExplorar_comision_vendedores := TfrmExplorar_comision_vendedores.Create(Application);
      frmExplorar_comision_vendedores.Show;
   end
   else
   if objeto = 'FRMKARDEX' then
   begin
      Application.CreateForm(TfrmKardex, frmKardex);
      frmKardex.DATABASE    := dmIBModulo.ibSistema;
      frmKardex.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
      frmKardex.Open;
      frmKardex.Show;
   end
   else
   if objeto = 'FRMINVENTARIOS' then
   begin
      frmInventarios := TfrmInventarios.Create(Application);
      frmInventarios.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_LISTA_PRECIOS' then
   begin
      frmExplorar_lista_precios := TfrmExplorar_lista_precios.Create(Application);
      frmExplorar_lista_precios.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_OFERTAS' then
   begin
      frmExplorar_Ofertas := TfrmExplorar_Ofertas.Create(Application);
      frmExplorar_Ofertas.Show;
   end
   else
   if (objeto = 'FRMREPORTESENTRADAS') then
   begin
      frmReportesEntradas := TfrmReporteGralesEntradas.Create(Application);
      try
         frmReportesEntradas.ShowModal;
      finally
         frmReportesEntradas.Free;
      end;
   end
   else
   if (objeto = 'FRMREPORTEGRALESSALIDAS') then
   begin
      frmReporteGralesSalidas := TfrmReporteGralesSalidas.Create(Application);
      try
         frmReporteGralesSalidas.ShowModal;
      finally
         frmReporteGralesSalidas.Free;
      end;
   end
   else
   if objeto = 'FRMEXPLORAR_COLORES' then
   begin
      frmExplorar_Colores := TfrmExplorar_Colores.Create(Application);
      frmExplorar_Colores.Show;
   end
   else
   if objeto = 'FRMGENERARREPORTELISTAPRECIOS' then
   begin
     frmGenerarReporteListaPrecios := TfrmGenerarReporteListaPrecios.Create(Application);
     frmGenerarReporteListaPrecios.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_LINEAS' then
   begin
      frmCapturar_Lineas := TfrmCapturar_Lineas.Crear(Application);
      frmCapturar_Lineas.Show;
   end
   else
   if objeto = 'FRMMEDIDAS' then
   begin
      frmMedidas := TfrmMedidas.Crear(Application);
      frmMedidas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MOVIMIENTOS_DE_INVENTARIO' then
   begin
      frmExplorar_movimientos_de_inventario := TfrmExplorar_movimientos_de_inventario.Create(Application);
      frmExplorar_movimientos_de_inventario.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TIPOS_DE_SALIDA' then
   begin
      frmExplorar_tipos_de_salida := TfrmExplorar_tipos_de_salida.Create(Application);
      frmExplorar_tipos_de_salida.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TIPOS_DE_ENTRADA' then
   begin
      frmExplorar_tipos_de_entrada := TfrmExplorar_tipos_de_entrada.Create(Application);
      frmExplorar_tipos_de_entrada.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_SEGUIMIENTOCOBRANZA' then
   begin
      frmCapturar_SeguimientoCobranza := TfrmCapturar_SeguimientoCobranza.Create(Application);
      frmCapturar_SeguimientoCobranza.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_NOTAS_DE_CARGO' then
   begin
      frmExplorar_notas_de_cargo := TfrmExplorar_notas_de_cargo.Create(Application);
      frmExplorar_notas_de_cargo.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_MOVIMIENTOS_CLASIFICADOS' then
   begin
      frmCapturar_Movimientos_Clasificados := TfrmCapturar_Movimientos_Clasificados.Create(Application);
      frmCapturar_Movimientos_Clasificados.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_MOVIMIENTOS' then
   begin
      frmCapturar_movimientos := TfrmCapturar_movimientos.Create(Application);
      frmCapturar_movimientos.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_CIERREDIARIO' then
   begin
      frmCapturar_CierreDiario := TfrmCapturar_CierreDiario.Create(Application);
      frmCapturar_CierreDiario.Show;
   end
   else
   if objeto = 'FRMFR_DESIGN' then
   begin
      frmFR_DESIGN := TfrmFR_DESIGN.Create(Application);
      frmFR_DESIGN.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_REPORTES_EXTRAS' then
   begin
      frmCapturar_reportes_extras := TfrmCapturar_reportes_extras.Create(Application);
      frmCapturar_reportes_extras.Show;
   end
   else
   if objeto = 'FRMMAIL' then
   begin
      frmMail := TfrmMail.Create(Application);
      try
         frmMail.ShowModal;
      finally
         frmMail.Free;
      end;
   end
   else
   if objeto = 'FRMEXPLORAR_CHEQUERAS' then
   begin
      frmExplorar_chequeras := TfrmExplorar_chequeras.Create(Application);
      frmExplorar_chequeras.Show;
   end
   else
   if objeto = 'FRMSEGUIMIENTO_PAGOS' then
   begin
      Application.CreateForm(TfrmSeguimiento_Pagos, frmSeguimiento_Pagos);
      frmSeguimiento_Pagos.Show;
   end
   else
   if objeto = 'FRMSEGUIMIENTO_COBRANZA' then
   begin
      Application.CreateForm(TfrmSeguimiento_Cobranza, frmSeguimiento_Cobranza);
      frmSeguimiento_Cobranza.Show;
   end
   else
   if objeto = 'FRMPROYECCION_COBRANZA' then
   begin
      Application.CreateForm(TfrmProyeccion_Cobranza, frmProyeccion_Cobranza);
      frmProyeccion_Cobranza.Show;
   end
   else
   if objeto = 'FRMPROYECCION_PAGOS' then
   begin
      Application.CreateForm(TfrmProyeccion_Pagos, frmProyeccion_Pagos);
      frmProyeccion_Pagos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_NOTAS_DE_CREDITO' then
   begin
      frmExplorar_notas_de_credito := TfrmExplorar_notas_de_credito.Create(Application);
      frmExplorar_notas_de_credito.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_ANTICIPOS' then
   begin
      frmExplorar_anticipos := TfrmExplorar_anticipos.Create(Application);
      frmExplorar_anticipos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_ANTICIPOS_PROVEEDORES' then
   begin
      frmExplorar_anticipos_proveedores := TfrmExplorar_anticipos_proveedores.Create(Application);
      frmExplorar_anticipos_proveedores.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CONCEPTOS_DESCUENTOS' then
   begin
      frmExplorar_Conceptos_Descuentos := TfrmExplorar_Conceptos_Descuentos.Create(Application);
      frmExplorar_Conceptos_Descuentos.Show;
   end
   else
   else
   if objeto = 'FRMEXPLORAR_RUTAS' then
   begin
      frmExplorar_rutas := TfrmExplorar_rutas.Create(Application);
      frmExplorar_rutas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_COLECTAS_PAGOS' then
   begin
      frmExplorar_colectas_pagos := TfrmExplorar_colectas_pagos.Create(Application);
      frmExplorar_colectas_pagos.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_CHEQUES' then
   begin
     frmCapturar_cheques := TfrmCapturar_cheques.Create(Application);
     frmCapturar_cheques.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PUNTO_DE_VENTAS_REP' then
   begin
      frmExplorar_punto_de_ventas_rep := TfrmExplorar_punto_de_ventas_rep.Create(Application);
      frmExplorar_punto_de_ventas_rep.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_COLECTAS' then
   begin
      frmExplorar_colectas := TfrmExplorar_colectas.Create(Application);
      frmExplorar_colectas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_COBRO_PACIENTES' then
   begin
      frmExplorar_cobro_pacientes := TfrmExplorar_cobro_pacientes.Create(Application);
      frmExplorar_cobro_pacientes.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PUNTO_DE_VENTAS' then
   begin
      frmExplorar_punto_de_ventas := TfrmExplorar_punto_de_ventas.Create(Application);
      frmExplorar_punto_de_ventas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_NOMBRE_LISTA_PRECIOS' then
   begin
      frmExplorar_nombre_lista_precios := TfrmExplorar_nombre_lista_precios.Create(Application);
      frmExplorar_nombre_lista_precios.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_GRUPOS_MATERIALES' then
   begin
      frmExplorar_Grupos_Materiales := TfrmExplorar_Grupos_Materiales.Create(Application);
      frmExplorar_Grupos_Materiales.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CALIDADES' then
   begin
      frmExplorar_Calidades := TfrmExplorar_Calidades.Create(Application);
      frmExplorar_Calidades.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_USUARIOS' then
   begin
      frmExplorar_usuarios := TfrmExplorar_usuarios.Create(Application);
      frmExplorar_usuarios.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TABULADOR_NLP' then
   begin
      frmExplorar_tabulador_nlp := TfrmExplorar_tabulador_nlp.Create(Application);
      frmExplorar_tabulador_nlp.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_VENDEDORES' then
   begin
      frmExplorar_vendedores := TfrmExplorar_vendedores.Create(Application);
      frmExplorar_vendedores.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_DEPARTAMENTOS' then
   begin
      frmExplorar_departamentos := TfrmExplorar_departamentos.Create(Application);
      frmExplorar_departamentos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_FINANCIAMIENTOS' then
   begin
      frmExplorar_financiamientos := TfrmExplorar_financiamientos.Create(Application);
      frmExplorar_financiamientos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PROMOCIONES' then
   begin
      frmExplorar_promociones := TfrmExplorar_promociones.Create(Application);
      frmExplorar_promociones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_COMPRADORES' then
   begin
      frmExplorar_compradores := TfrmExplorar_compradores.Create(Application);
      frmExplorar_compradores.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TRANSPORTISTAS' then
   begin
      frmExplorar_transportistas := TfrmExplorar_transportistas.Create(Application);
      frmExplorar_transportistas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_REMITENTES' then
   begin
      frmExplorar_remitentes := TfrmExplorar_remitentes.Create(Application);
      frmExplorar_remitentes.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_ORDEN_DE_SERVICIO' then
   begin
      frmExplorar_orden_de_servicio := TfrmExplorar_orden_de_servicio.Create(Application);
      frmExplorar_orden_de_servicio.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_GFH' then
   begin
      frmExplorar_gfh := TfrmExplorar_gfh.Create(Application);
      frmExplorar_gfh.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_ESPECIALIDADES' then
   begin
      frmExplorar_especialidades := TfrmExplorar_especialidades.Create(Application);
      frmExplorar_especialidades.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_FALLAS' then
   begin
      frmExplorar_fallas := TfrmExplorar_fallas.Create(Application);
      frmExplorar_fallas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_TECNICOS' then
   begin
      frmExplorar_tecnicos := TfrmExplorar_tecnicos.Create(Application);
      frmExplorar_tecnicos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CLIENTES' then
   begin
      frmExplorar_clientes := TfrmExplorar_clientes.Create(Application);
      frmExplorar_clientes.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_EXTENSIONES' then
   begin
      frmExplorar_extensiones := TfrmExplorar_extensiones.Create(Application);
      frmExplorar_extensiones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PROVEEDORES' then
   begin
      frmExplorar_proveedores := TfrmExplorar_proveedores.Create(Application);
      frmExplorar_proveedores.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_ALMACENES' then
   begin
      frmExplorar_almacenes := TfrmExplorar_almacenes.Create(Application);
      frmExplorar_almacenes.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MENSAJES' then
   begin
      frmExplorar_mensajes := TfrmExplorar_mensajes.Create(Application);
      frmExplorar_mensajes.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_LINEAS' then
   begin
      frmCapturar_Lineas := TfrmCapturar_Lineas.Create(Application);
      frmCapturar_Lineas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_UNIDADES' then
   begin
      frmExplorar_unidades := TfrmExplorar_unidades.Create(Application);
      frmExplorar_unidades.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_MATERIALES' then
   begin
      frmExplorar_materiales := TfrmExplorar_materiales.Create(Application);
      frmExplorar_materiales.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_REQUISICIONES' then
   begin
      frmExplorar_requisiciones := TfrmExplorar_requisiciones.Create(Application);
      frmExplorar_requisiciones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_REQUISICION_COTIZACIONES' then
   begin
      frmExplorar_requisicion_cotizaciones := TfrmExplorar_requisicion_cotizaciones.Create(Application);
      frmExplorar_requisicion_cotizaciones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_ORDENES_DE_COMPRAS' then
   begin
      frmExplorar_ordenes_de_compras := TfrmExplorar_ordenes_de_compras.Create(Application);
      frmExplorar_ordenes_de_compras.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_DESEMPAQUES' then
   begin
      frmExplorar_desempaques := TfrmExplorar_desempaques.Create(Application);
      frmExplorar_desempaques.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_NOTAS_DE_ENTRADA' then
   begin
      frmExplorar_notas_de_entrada := TfrmExplorar_notas_de_entrada.Create(Application);
      frmExplorar_notas_de_entrada.Show;
   end
   else
   if objeto = 'FRMCAPTURAR_PREFERENCIAS' then
   begin
      frmCapturar_preferencias := TfrmCapturar_preferencias.Create(Application);
      frmCapturar_preferencias.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CONSUMOS' then
   begin
      frmExplorar_consumos := TfrmExplorar_consumos.Create(Application);
      frmExplorar_consumos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_COTIZACIONES' then
   begin
      frmExplorar_cotizaciones := TfrmExplorar_cotizaciones.Create(Application);
      frmExplorar_cotizaciones.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_COTIZACIONES_ESTATUS' then
   begin
      frmExplorar_cotizaciones_estatus := TfrmExplorar_cotizaciones_estatus.Create(Application);
      frmExplorar_cotizaciones_estatus.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CUENTA_PACIENTE' then
   begin
      Application.CreateForm(TfrmExplorar_cuenta_paciente, frmExplorar_cuenta_paciente);
      frmExplorar_cuenta_paciente.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_PEDIDOS' then
   begin
      Application.CreateForm(TfrmExplorar_pedidos, frmExplorar_pedidos);
      frmExplorar_pedidos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_POS' then
   begin
      Application.CreateForm(TfrmExplorar_pos, frmExplorar_pos);
      frmExplorar_pos.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_SURTIMIENTO' then
   begin
      Application.CreateForm(TfrmExplorar_surtimiento, frmExplorar_surtimiento);
      frmExplorar_surtimiento.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_FACTURAS' then
   begin
      Application.CreateForm(TfrmExplorar_Facturas, frmExplorar_Facturas);
      frmExplorar_Facturas.Show;
   end
   else
   if objeto = 'FRMEXPLORAR_CAJAS' then
   begin
      frmExplorar_cajas := TfrmExplorar_cajas.Create(Application);
      frmExplorar_cajas.Show;
   end
   else
   if objeto = 'FRMREGISTRODEPACIENTES' then
   begin
      frmRegistroDePacientes := TfrmRegistroDePacientes.Create(Application);
      frmRegistroDePacientes.Show;
   end
   else
   if objeto = 'FRMPOSABARROTES' then
   begin
      frmPOSAbarrotes := TfrmPOSAbarrotes.Create(Application);
      frmPOSAbarrotes.Show;
   end
   else
   if objeto = 'FRMCONFIGURACIONPOS' then
   begin
      frmConfiguracionPOS := TfrmConfiguracionPOS.Create(Application);
      try
         frmConfiguracionPOS.ShowModal;
      finally
         frmConfiguracionPOS.Free;
      end;
   end
   else
   if objeto = 'FRMCAPTURAR_PUNTO_DE_VENTAS' then
   begin
      frmCapturar_punto_de_ventas := TfrmCapturar_punto_de_ventas.Create(Application);
      frmCapturar_punto_de_ventas.show;
   end
   else
   if objeto = 'FRMSURTIMIENTO' then
   begin
      frmSurtimiento := TfrmSurtimiento.Create(Application);
      try
         frmSurtimiento.ShowModal;
      finally
         frmSurtimiento.Free;
      end;
   end
   else
   if objeto = 'FRMSURTIMIENTOLISTAEMPAQUE' then
   begin
      frmSurtimientoListaEmpaque := TfrmSurtimientoListaEmpaque.Create(Application);
      try
         frmSurtimientoListaEmpaque.ShowModal;
      finally
         frmSurtimientoListaEmpaque.Free;
      end;
   end
   else
   if objeto = 'FRMEXPLORAR_PRECONFIGURACION_TOUCHSCREEN' then
   begin
      frmExplorar_preconfiguracion_touchScreen := TfrmExplorar_preconfiguracion_touchScreen.Create(Application);
      frmExplorar_preconfiguracion_touchScreen.Show;
   end;
   }
   Result := tmp;
end;

procedure comando(valor : string);
var
   ruta      : string;
   SearchRec : TSearchRec;
   archivo   : string;
   args      : string;
begin
  valor := UpperCase(valor);
  if valor = 'SALIR' then
  begin
     reglas.cerrar_all;
     Application.Terminate;
  end
  else
  if valor = 'CASCADA' then
     frmMenu.Cascade
  else
  if valor = 'MOSAICO' then
     frmMenu.Tile
  else
  if valor = 'CERRAR TODO' then
     reglas.cerrar_all
  else
  //programas externos, ejecutados directamente.
  if (valor = 'POS') then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
     archivo := 'POSCleaner.exe';
     if  FindFirst(ruta + archivo, faAnyFile, SearchRec) = 0 then
     begin
        args := IntToStr(reglas.dame_usuario);
        WinExecNoWait32(ruta + archivo + ' ' + args, SW_SHOWDEFAULT);
        Application.Terminate;
     end
     else
        ShowMessage('Falta archivo POSCleaner.exe');
  end
  else
  //programas externos, ejecutados directamente.
  if (valor = 'TOUCHPOSFOOD') then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
     archivo := 'TouchPOSFood.exe';
     if  FindFirst(ruta + archivo, faAnyFile, SearchRec) = 0 then
     begin
        args := IntToStr(reglas.dame_usuario);
        WinExecNoWait32(ruta + archivo + ' ' + args, SW_SHOWDEFAULT);
        Application.Terminate;
     end
     else
        ShowMessage('Falta archivo TouchPOS.exe');
  end
  else
  if (valor = 'TOUCHPOS') then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
     archivo := 'TouchPOS.exe';
     if  FindFirst(ruta + archivo, faAnyFile, SearchRec) = 0 then
     begin
        args := IntToStr(reglas.dame_usuario);
        WinExecNoWait32(ruta + archivo + ' ' + args, SW_SHOWDEFAULT);
        Application.Terminate;
     end
     else
        ShowMessage('Falta archivo TouchPOS.exe');
  end
  else
  if (valor = 'POS CONFIGURACION BOTONES CATEGORIAS') then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
     archivo := 'POSCleanerCfgCategorias.exe';
     if  FindFirst(ruta + archivo, faAnyFile, SearchRec) = 0 then
     begin
        args := IntToStr(reglas.dame_usuario);
        WinExecNoWait32(ruta + archivo + ' ' + args, SW_SHOWDEFAULT);
     end
     else
        ShowMessage('Falta archivo POSCleanerCfgCategorias.exe');
  end
  else
  if (valor = 'POS CONFIGURACION BOTONES ARTICULOS') then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
     archivo := 'POSCleanerCfgArticulos.exe';
     if  FindFirst(ruta + archivo, faAnyFile, SearchRec) = 0 then
     begin
        args := IntToStr(reglas.dame_usuario);
        WinExecNoWait32(ruta + archivo + ' ' + args, SW_SHOWDEFAULT);
     end
     else
        ShowMessage('Falta archivo POSCleanerCfgArticulos.exe');
  end
  else
  if (valor = 'POS CONFIGURACION BOTONES MODIFICADORES') then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
     archivo := 'POSCleanerCfgModificadores.exe';
     if  FindFirst(ruta + archivo, faAnyFile, SearchRec) = 0 then
     begin
        args := IntToStr(reglas.dame_usuario);
        WinExecNoWait32(ruta + archivo + ' ' + args, SW_SHOWDEFAULT);
     end
     else
        ShowMessage('Falta archivo POSCleanerCfgModificadores.exe');
  end
  else
  if (valor = 'POS MERKABASTOS') then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'POS\';
     archivo := 'POSSupermercados.exe';
     if FileExists(ruta + archivo) then
     begin
        args := IntToStr(reglas.dame_usuario);
        WinExecNoWait32(ruta + archivo + ' ' + args, SW_SHOWDEFAULT);
        Application.Terminate;
     end
     else
        ShowMessage('Falta programa: ' + archivo);
  end

end;

end.

