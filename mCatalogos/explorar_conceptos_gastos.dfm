inherited frmExplorar_Conceptos_Gastos: TfrmExplorar_Conceptos_Gastos
  Left = 466
  Top = 293
  Caption = 'Explorar Conceptos Gastos'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited paExplorarBusqueda: TPanel
    inherited laCampo: TLabel
      Width = 90
      Caption = 'Concepto'
      ExplicitWidth = 90
    end
    inherited edExplorarValor: TEdit
      Left = 113
      ExplicitLeft = 113
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, CONCEPTO R_CONCEPTO, PORC R_PORC'
      'FROM CONCEPTOS_GASTOS'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'CONCEPTOS_GASTOS.ID'
      Required = True
    end
    object qyExplorarR_CONCEPTO: TIBStringField
      FieldName = 'R_CONCEPTO'
      Origin = 'CONCEPTOS_GASTOS.CONCEPTO'
      Size = 100
    end
    object qyExplorarR_PORC: TFloatField
      FieldName = 'R_PORC'
      Origin = 'CONCEPTOS_GASTOS.PORC'
      DisplayFormat = '##0.## %'
    end
  end
end
