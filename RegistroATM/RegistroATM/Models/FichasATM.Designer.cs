﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

[assembly: EdmSchemaAttribute()]
namespace RegistroATM.Models
{
    #region Contextos
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    public partial class FichasATMEntities : ObjectContext
    {
        #region Constructores
    
        /// <summary>
        /// Inicializa un nuevo objeto FichasATMEntities usando la cadena de conexión encontrada en la sección 'FichasATMEntities' del archivo de configuración de la aplicación.
        /// </summary>
        public FichasATMEntities() : base("name=FichasATMEntities", "FichasATMEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto FichasATMEntities.
        /// </summary>
        public FichasATMEntities(string connectionString) : base(connectionString, "FichasATMEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto FichasATMEntities.
        /// </summary>
        public FichasATMEntities(EntityConnection connection) : base(connection, "FichasATMEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Métodos parciales
    
        partial void OnContextCreated();
    
        #endregion
    
        #region Propiedades de ObjectSet
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        public ObjectSet<FichaATM> FichaATM
        {
            get
            {
                if ((_FichaATM == null))
                {
                    _FichaATM = base.CreateObjectSet<FichaATM>("FichaATM");
                }
                return _FichaATM;
            }
        }
        private ObjectSet<FichaATM> _FichaATM;

        #endregion

        #region Métodos AddTo
    
        /// <summary>
        /// Método desusado para agregar un nuevo objeto al EntitySet FichaATM. Considere la posibilidad de usar el método .Add de la propiedad ObjectSet&lt;T&gt; asociada.
        /// </summary>
        public void AddToFichaATM(FichaATM fichaATM)
        {
            base.AddObject("FichaATM", fichaATM);
        }

        #endregion

    }

    #endregion

    #region Entidades
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="FichasATMModel", Name="FichaATM")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class FichaATM : EntityObject
    {
        #region Método de generador
    
        /// <summary>
        /// Crear un nuevo objeto FichaATM.
        /// </summary>
        /// <param name="numeroAtm">Valor inicial de la propiedad NumeroAtm.</param>
        /// <param name="eTV">Valor inicial de la propiedad ETV.</param>
        /// <param name="bancoAtm">Valor inicial de la propiedad BancoAtm.</param>
        /// <param name="marcaAtm">Valor inicial de la propiedad MarcaAtm.</param>
        /// <param name="datosDeRed">Valor inicial de la propiedad DatosDeRed.</param>
        /// <param name="digitoVerificador">Valor inicial de la propiedad DigitoVerificador.</param>
        /// <param name="modeloAtm">Valor inicial de la propiedad ModeloAtm.</param>
        /// <param name="numeroDeSerie">Valor inicial de la propiedad NumeroDeSerie.</param>
        /// <param name="eMV">Valor inicial de la propiedad EMV.</param>
        /// <param name="depositarioEfectivo">Valor inicial de la propiedad DepositarioEfectivo.</param>
        /// <param name="depositarioSobre">Valor inicial de la propiedad DepositarioSobre.</param>
        /// <param name="lectorLibreta">Valor inicial de la propiedad LectorLibreta.</param>
        /// <param name="jitter">Valor inicial de la propiedad Jitter.</param>
        /// <param name="tamañoHDD">Valor inicial de la propiedad TamañoHDD.</param>
        /// <param name="tipoHDD">Valor inicial de la propiedad TipoHDD.</param>
        /// <param name="ram">Valor inicial de la propiedad Ram.</param>
        /// <param name="sO">Valor inicial de la propiedad SO.</param>
        public static FichaATM CreateFichaATM(global::System.Int32 numeroAtm, global::System.String eTV, global::System.String bancoAtm, global::System.String marcaAtm, global::System.String datosDeRed, global::System.String digitoVerificador, global::System.String modeloAtm, global::System.String numeroDeSerie, global::System.String eMV, global::System.String depositarioEfectivo, global::System.String depositarioSobre, global::System.String lectorLibreta, global::System.String jitter, global::System.String tamañoHDD, global::System.String tipoHDD, global::System.String ram, global::System.String sO)
        {
            FichaATM fichaATM = new FichaATM();
            fichaATM.NumeroAtm = numeroAtm;
            fichaATM.ETV = eTV;
            fichaATM.BancoAtm = bancoAtm;
            fichaATM.MarcaAtm = marcaAtm;
            fichaATM.DatosDeRed = datosDeRed;
            fichaATM.DigitoVerificador = digitoVerificador;
            fichaATM.ModeloAtm = modeloAtm;
            fichaATM.NumeroDeSerie = numeroDeSerie;
            fichaATM.EMV = eMV;
            fichaATM.DepositarioEfectivo = depositarioEfectivo;
            fichaATM.DepositarioSobre = depositarioSobre;
            fichaATM.LectorLibreta = lectorLibreta;
            fichaATM.Jitter = jitter;
            fichaATM.TamañoHDD = tamañoHDD;
            fichaATM.TipoHDD = tipoHDD;
            fichaATM.Ram = ram;
            fichaATM.SO = sO;
            return fichaATM;
        }

        #endregion

        #region Propiedades primitivas
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 NumeroAtm
        {
            get
            {
                return _NumeroAtm;
            }
            set
            {
                if (_NumeroAtm != value)
                {
                    OnNumeroAtmChanging(value);
                    ReportPropertyChanging("NumeroAtm");
                    _NumeroAtm = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("NumeroAtm");
                    OnNumeroAtmChanged();
                }
            }
        }
        private global::System.Int32 _NumeroAtm;
        partial void OnNumeroAtmChanging(global::System.Int32 value);
        partial void OnNumeroAtmChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String ETV
        {
            get
            {
                return _ETV;
            }
            set
            {
                OnETVChanging(value);
                ReportPropertyChanging("ETV");
                _ETV = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("ETV");
                OnETVChanged();
            }
        }
        private global::System.String _ETV;
        partial void OnETVChanging(global::System.String value);
        partial void OnETVChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String BancoAtm
        {
            get
            {
                return _BancoAtm;
            }
            set
            {
                OnBancoAtmChanging(value);
                ReportPropertyChanging("BancoAtm");
                _BancoAtm = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("BancoAtm");
                OnBancoAtmChanged();
            }
        }
        private global::System.String _BancoAtm;
        partial void OnBancoAtmChanging(global::System.String value);
        partial void OnBancoAtmChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String MarcaAtm
        {
            get
            {
                return _MarcaAtm;
            }
            set
            {
                OnMarcaAtmChanging(value);
                ReportPropertyChanging("MarcaAtm");
                _MarcaAtm = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("MarcaAtm");
                OnMarcaAtmChanged();
            }
        }
        private global::System.String _MarcaAtm;
        partial void OnMarcaAtmChanging(global::System.String value);
        partial void OnMarcaAtmChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String DatosDeRed
        {
            get
            {
                return _DatosDeRed;
            }
            set
            {
                OnDatosDeRedChanging(value);
                ReportPropertyChanging("DatosDeRed");
                _DatosDeRed = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("DatosDeRed");
                OnDatosDeRedChanged();
            }
        }
        private global::System.String _DatosDeRed;
        partial void OnDatosDeRedChanging(global::System.String value);
        partial void OnDatosDeRedChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String DigitoVerificador
        {
            get
            {
                return _DigitoVerificador;
            }
            set
            {
                OnDigitoVerificadorChanging(value);
                ReportPropertyChanging("DigitoVerificador");
                _DigitoVerificador = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("DigitoVerificador");
                OnDigitoVerificadorChanged();
            }
        }
        private global::System.String _DigitoVerificador;
        partial void OnDigitoVerificadorChanging(global::System.String value);
        partial void OnDigitoVerificadorChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String ModeloAtm
        {
            get
            {
                return _ModeloAtm;
            }
            set
            {
                OnModeloAtmChanging(value);
                ReportPropertyChanging("ModeloAtm");
                _ModeloAtm = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("ModeloAtm");
                OnModeloAtmChanged();
            }
        }
        private global::System.String _ModeloAtm;
        partial void OnModeloAtmChanging(global::System.String value);
        partial void OnModeloAtmChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String NumeroDeSerie
        {
            get
            {
                return _NumeroDeSerie;
            }
            set
            {
                OnNumeroDeSerieChanging(value);
                ReportPropertyChanging("NumeroDeSerie");
                _NumeroDeSerie = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("NumeroDeSerie");
                OnNumeroDeSerieChanged();
            }
        }
        private global::System.String _NumeroDeSerie;
        partial void OnNumeroDeSerieChanging(global::System.String value);
        partial void OnNumeroDeSerieChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String EMV
        {
            get
            {
                return _EMV;
            }
            set
            {
                OnEMVChanging(value);
                ReportPropertyChanging("EMV");
                _EMV = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("EMV");
                OnEMVChanged();
            }
        }
        private global::System.String _EMV;
        partial void OnEMVChanging(global::System.String value);
        partial void OnEMVChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String DepositarioEfectivo
        {
            get
            {
                return _DepositarioEfectivo;
            }
            set
            {
                OnDepositarioEfectivoChanging(value);
                ReportPropertyChanging("DepositarioEfectivo");
                _DepositarioEfectivo = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("DepositarioEfectivo");
                OnDepositarioEfectivoChanged();
            }
        }
        private global::System.String _DepositarioEfectivo;
        partial void OnDepositarioEfectivoChanging(global::System.String value);
        partial void OnDepositarioEfectivoChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String DepositarioSobre
        {
            get
            {
                return _DepositarioSobre;
            }
            set
            {
                OnDepositarioSobreChanging(value);
                ReportPropertyChanging("DepositarioSobre");
                _DepositarioSobre = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("DepositarioSobre");
                OnDepositarioSobreChanged();
            }
        }
        private global::System.String _DepositarioSobre;
        partial void OnDepositarioSobreChanging(global::System.String value);
        partial void OnDepositarioSobreChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String LectorLibreta
        {
            get
            {
                return _LectorLibreta;
            }
            set
            {
                OnLectorLibretaChanging(value);
                ReportPropertyChanging("LectorLibreta");
                _LectorLibreta = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("LectorLibreta");
                OnLectorLibretaChanged();
            }
        }
        private global::System.String _LectorLibreta;
        partial void OnLectorLibretaChanging(global::System.String value);
        partial void OnLectorLibretaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Jitter
        {
            get
            {
                return _Jitter;
            }
            set
            {
                OnJitterChanging(value);
                ReportPropertyChanging("Jitter");
                _Jitter = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Jitter");
                OnJitterChanged();
            }
        }
        private global::System.String _Jitter;
        partial void OnJitterChanging(global::System.String value);
        partial void OnJitterChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String TamañoHDD
        {
            get
            {
                return _TamañoHDD;
            }
            set
            {
                OnTamañoHDDChanging(value);
                ReportPropertyChanging("TamañoHDD");
                _TamañoHDD = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("TamañoHDD");
                OnTamañoHDDChanged();
            }
        }
        private global::System.String _TamañoHDD;
        partial void OnTamañoHDDChanging(global::System.String value);
        partial void OnTamañoHDDChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String TipoHDD
        {
            get
            {
                return _TipoHDD;
            }
            set
            {
                OnTipoHDDChanging(value);
                ReportPropertyChanging("TipoHDD");
                _TipoHDD = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("TipoHDD");
                OnTipoHDDChanged();
            }
        }
        private global::System.String _TipoHDD;
        partial void OnTipoHDDChanging(global::System.String value);
        partial void OnTipoHDDChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Ram
        {
            get
            {
                return _Ram;
            }
            set
            {
                OnRamChanging(value);
                ReportPropertyChanging("Ram");
                _Ram = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Ram");
                OnRamChanged();
            }
        }
        private global::System.String _Ram;
        partial void OnRamChanging(global::System.String value);
        partial void OnRamChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String SO
        {
            get
            {
                return _SO;
            }
            set
            {
                OnSOChanging(value);
                ReportPropertyChanging("SO");
                _SO = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("SO");
                OnSOChanged();
            }
        }
        private global::System.String _SO;
        partial void OnSOChanging(global::System.String value);
        partial void OnSOChanged();

        #endregion

    
    }

    #endregion

    
}
