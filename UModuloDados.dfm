object ModuloDados: TModuloDados
  OldCreateOrder = False
  Left = 723
  Top = 289
  Height = 270
  Width = 371
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PASSWORD'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EMAIL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY132'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'USERS'
    Left = 152
    Top = 64
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT COUNT(*) CONTADOR FROM USERS WHERE NAME = :name AND PASSW' +
        'ORD = :password ;')
    Left = 80
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'password'
        ParamType = ptUnknown
      end>
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Program Files (x86)\Bluware\Dados\TrunkNicolas\ELITE.GDB'
    Params.Strings = (
      'user_name=bluware'
      'lc_ctype=WIN1252'
      'password=78787668')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 144
    Top = 144
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 224
    Top = 72
  end
end
