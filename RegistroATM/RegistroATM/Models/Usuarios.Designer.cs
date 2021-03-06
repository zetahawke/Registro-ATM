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
    public partial class UsuariosEntities : ObjectContext
    {
        #region Constructores
    
        /// <summary>
        /// Inicializa un nuevo objeto UsuariosEntities usando la cadena de conexión encontrada en la sección 'UsuariosEntities' del archivo de configuración de la aplicación.
        /// </summary>
        public UsuariosEntities() : base("name=UsuariosEntities", "UsuariosEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto UsuariosEntities.
        /// </summary>
        public UsuariosEntities(string connectionString) : base(connectionString, "UsuariosEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto UsuariosEntities.
        /// </summary>
        public UsuariosEntities(EntityConnection connection) : base(connection, "UsuariosEntities")
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
        public ObjectSet<Usuario> Usuario
        {
            get
            {
                if ((_Usuario == null))
                {
                    _Usuario = base.CreateObjectSet<Usuario>("Usuario");
                }
                return _Usuario;
            }
        }
        private ObjectSet<Usuario> _Usuario;

        #endregion

        #region Métodos AddTo
    
        /// <summary>
        /// Método desusado para agregar un nuevo objeto al EntitySet Usuario. Considere la posibilidad de usar el método .Add de la propiedad ObjectSet&lt;T&gt; asociada.
        /// </summary>
        public void AddToUsuario(Usuario usuario)
        {
            base.AddObject("Usuario", usuario);
        }

        #endregion

    }

    #endregion

    #region Entidades
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="UsuariosModel", Name="Usuario")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Usuario : EntityObject
    {
        #region Método de generador
    
        /// <summary>
        /// Crear un nuevo objeto Usuario.
        /// </summary>
        /// <param name="nombre">Valor inicial de la propiedad Nombre.</param>
        /// <param name="apellido">Valor inicial de la propiedad Apellido.</param>
        /// <param name="rut">Valor inicial de la propiedad Rut.</param>
        /// <param name="usuario1">Valor inicial de la propiedad Usuario1.</param>
        /// <param name="contraseña">Valor inicial de la propiedad Contraseña.</param>
        /// <param name="privilegio">Valor inicial de la propiedad Privilegio.</param>
        public static Usuario CreateUsuario(global::System.String nombre, global::System.String apellido, global::System.String rut, global::System.String usuario1, global::System.String contraseña, global::System.String privilegio)
        {
            Usuario usuario = new Usuario();
            usuario.Nombre = nombre;
            usuario.Apellido = apellido;
            usuario.Rut = rut;
            usuario.Usuario1 = usuario1;
            usuario.Contraseña = contraseña;
            usuario.Privilegio = privilegio;
            return usuario;
        }

        #endregion

        #region Propiedades primitivas
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Nombre
        {
            get
            {
                return _Nombre;
            }
            set
            {
                OnNombreChanging(value);
                ReportPropertyChanging("Nombre");
                _Nombre = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Nombre");
                OnNombreChanged();
            }
        }
        private global::System.String _Nombre;
        partial void OnNombreChanging(global::System.String value);
        partial void OnNombreChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Apellido
        {
            get
            {
                return _Apellido;
            }
            set
            {
                OnApellidoChanging(value);
                ReportPropertyChanging("Apellido");
                _Apellido = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Apellido");
                OnApellidoChanged();
            }
        }
        private global::System.String _Apellido;
        partial void OnApellidoChanging(global::System.String value);
        partial void OnApellidoChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Rut
        {
            get
            {
                return _Rut;
            }
            set
            {
                OnRutChanging(value);
                ReportPropertyChanging("Rut");
                _Rut = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Rut");
                OnRutChanged();
            }
        }
        private global::System.String _Rut;
        partial void OnRutChanging(global::System.String value);
        partial void OnRutChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Usuario1
        {
            get
            {
                return _Usuario1;
            }
            set
            {
                if (_Usuario1 != value)
                {
                    OnUsuario1Changing(value);
                    ReportPropertyChanging("Usuario1");
                    _Usuario1 = StructuralObject.SetValidValue(value, false);
                    ReportPropertyChanged("Usuario1");
                    OnUsuario1Changed();
                }
            }
        }
        private global::System.String _Usuario1;
        partial void OnUsuario1Changing(global::System.String value);
        partial void OnUsuario1Changed();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Contraseña
        {
            get
            {
                return _Contraseña;
            }
            set
            {
                OnContraseñaChanging(value);
                ReportPropertyChanging("Contraseña");
                _Contraseña = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Contraseña");
                OnContraseñaChanged();
            }
        }
        private global::System.String _Contraseña;
        partial void OnContraseñaChanging(global::System.String value);
        partial void OnContraseñaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Privilegio
        {
            get
            {
                return _Privilegio;
            }
            set
            {
                OnPrivilegioChanging(value);
                ReportPropertyChanging("Privilegio");
                _Privilegio = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Privilegio");
                OnPrivilegioChanged();
            }
        }
        private global::System.String _Privilegio;
        partial void OnPrivilegioChanging(global::System.String value);
        partial void OnPrivilegioChanged();

        #endregion

    
    }

    #endregion

    
}
