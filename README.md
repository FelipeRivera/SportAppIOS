# SportAppIOS

SportAppIOS es una aplicación iOS desarrollada en SwiftUI sin dependencias externas. El proyecto se compone únicamente de pantallas creadas con SwiftUI y demuestra el uso de componentes modernos de navegación como `NavigationLink` y `NavigationStack` (disponible desde iOS 16).

## Características

- **SwiftUI:** Todas las pantallas se construyeron utilizando SwiftUI.
- **Previews Integrados:** Cada pantalla y cada componente cuenta con su respectivo preview dentro del proyecto, permitiendo una rápida visualización y prueba de la interfaz.
- **Navegación:** Se implementa `NavigationLink` para la navegación básica y `NavigationStack` para la gestión moderna de la pila de navegación (requerido iOS 16 o superior).
- **Entorno de Desarrollo:**  
  - **Emulador:** iPhone 14  
  - **Versión de iOS:** 18.3.1  
  - **Xcode:** 16.2
- **Sin Dependencias Externas:** El proyecto no utiliza frameworks o librerías adicionales.

## Requisitos

- **Xcode 16.2 o superior.**
- **iOS 16 o superior:** Para aprovechar `NavigationStack`.
- Dispositivo físico o emulador (se recomienda el emulador de iPhone 14 para replicar el entorno de pruebas).

## Instalación y Ejecución

### 1. Descargar el Proyecto

Abre tu terminal y clona el repositorio ejecutando:

git clone https://github.com/FelipeRivera/SportAppIOS.git

Luego, ingresa al directorio del proyecto:

cd SportAppIOS


### 2. Abrir el Proyecto en Xcode

1. Inicia **Xcode**.
2. Selecciona **File > Open...** y localiza la carpeta del proyecto.
3. Abre el archivo `.xcodeproj`.

### 3. Ejecutar la Aplicación

#### En el Emulador

1. En la barra superior de Xcode, selecciona el emulador (por ejemplo, iPhone 14).
2. Haz clic en el botón **Run** (ícono de play) para compilar y ejecutar la aplicación.

#### En un Dispositivo Físico

1. Conecta tu dispositivo iOS a tu Mac.
2. Selecciona tu dispositivo como destino en la barra superior de Xcode.
3. Configura tu cuenta de Apple en **Xcode > Preferencias > Cuentas** y asegúrate de haber asignado tu equipo en **Signing & Capabilities** del proyecto.
4. Haz clic en **Run** para compilar e instalar la aplicación en el dispositivo.
5. **Nota:** Con una cuenta gratuita, la firma de la aplicación es válida solo por 7 días, por lo que deberás volver a instalarla una vez vencida.

## Limitaciones

- **Generación de IPA:**  
  No es posible generar un archivo IPA para distribución con una cuenta gratuita, ya que se requiere una suscripción paga al Apple Developer Program. La aplicación está pensada para pruebas locales únicamente.

## Estructura del Proyecto

- **SwiftUI Views:**  
  El proyecto contiene múltiples vistas (screens) desarrolladas en SwiftUI que demuestran diferentes interfaces y flujos de navegación.
  
- **Navegación:**  
  Se utilizan `NavigationLink` para la navegación entre pantallas y `NavigationStack` (disponible desde iOS 16) para gestionar la pila de navegación de forma moderna.

- **Previews:**  
  Cada pantalla y cada componente cuenta con su respectivo preview dentro del proyecto, facilitando la visualización y verificación de la interfaz.

  #### Vistas
  Login
  <img width="1135" alt="Screenshot 2025-03-13 at 12 52 06 AM" src="https://github.com/user-attachments/assets/09dc6db9-7492-4883-8919-2a107776edaa" />
  Menu
  <img width="1086" alt="Screenshot 2025-03-13 at 12 52 30 AM" src="https://github.com/user-attachments/assets/94ae3557-9a19-4f33-b93b-7a87d4e509f5" />
  RealTime
  <img width="1089" alt="Screenshot 2025-03-13 at 12 52 55 AM" src="https://github.com/user-attachments/assets/c0565620-2307-4f8c-ac99-e4383cd535eb" />
  Round
  <img width="1077" alt="Screenshot 2025-03-13 at 12 53 16 AM" src="https://github.com/user-attachments/assets/0b52b46a-59fe-41fb-ad50-29882602954c" />
  Rutines
  <img width="1084" alt="Screenshot 2025-03-13 at 12 53 36 AM" src="https://github.com/user-attachments/assets/fc01dfc7-fc83-4a42-871e-ce13124cbc34" />
  Summary
  <img width="1083" alt="Screenshot 2025-03-13 at 12 54 00 AM" src="https://github.com/user-attachments/assets/0f9d517f-7118-4040-b06d-18353d97419a" />

