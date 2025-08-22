# UniApp Unillanos

Una aplicación móvil desarrollada en Flutter para brindar información a los estudiantes de la Universidad de los Llanos sobre rutas de transporte y novedades obtenidas desde Facebook.

## Descripción

UniApp Unillanos es una aplicación móvil que tiene el fin de brindar información a los estudiantes de la Universidad de los Llanos sobre temas como las rutas y novedades que se informen en la red social "Facebook" sobre las mismas. Esto con el fin de ayudar a la comunidad universitaria a tener una información completa de forma práctica y rápida.

## Tecnologías Utilizadas

- **Flutter/Dart**: Framework principal para el desarrollo móvil
- **Python**: Para servicios backend y APIs
- **Docker**: Containerización

## Requisitos del Sistema

### Para Desarrollo
- Flutter SDK
- Dart SDK
- Android Studio o VS Code
- Python 3.x
- Git

### Para Usuarios
- Android 5.0+ o iOS 11.0+
- Conexión a internet

## Instalación

### Clonar el Repositorio
```bash
git clone https://github.com/NastMz/UniApp-Unillanos.git
cd UniApp-Unillanos
```

### Configurar Flutter
```bash
flutter doctor
flutter pub get
```

### Configurar Backend (si aplica)
```bash
pip install -r requirements.txt
```

## Ejecución

```bash
# Ejecutar la aplicación
flutter run

# Ver dispositivos disponibles
flutter devices
```

## Objetivo del Proyecto

Esta aplicación busca centralizar información importante para los estudiantes de la Universidad de los Llanos, específicamente:

- **Información de rutas de transporte universitario**
- **Novedades y comunicados desde Facebook institucional**
- **Acceso rápido y práctico a información universitaria**

## Estructura del Proyecto

```
UniApp-Unillanos/
├── lib/                # Código Flutter/Dart
├── android/           # Configuración Android
├── ios/              # Configuración iOS
├── [backend]/        # Servicios Python (si existen)
├── Dockerfile        # Configuración Docker
└── pubspec.yaml      # Dependencias Flutter
```
