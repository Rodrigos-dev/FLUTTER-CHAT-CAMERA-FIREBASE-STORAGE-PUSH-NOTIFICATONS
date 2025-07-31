# Flutter Chat App com Câmera, Avatar, Push Notification e Firebase Firestore
Um projeto Flutter completo de chat em tempo real com funcionalidades de envio de imagens pela câmera, avatar de usuário, notificações push e backend no Firebase Firestore.


🚀 Funcionalidades
Chat em tempo real usando Firebase Firestore

Envio de imagens via câmera integrada do dispositivo

Avatares personalizados para usuários

Push notifications com Firebase Cloud Messaging (FCM)

Configuração Firebase para Android e iOS via arquivos google-services.json e GoogleService-Info.plist

Autenticação simples (exemplo com email/senha ou anon)


📋 Pré-requisitos
Flutter instalado (Flutter SDK)

Conta no Firebase

Editor de código (VSCode, Android Studio, etc)

Dispositivo ou emulador Android/iOS configurado


🔧 Configuração do Firebase
Crie um projeto no Firebase Console.

Adicione o app Android:

Informe o package name (ex: com.seunome.chatapp)

Faça download do arquivo google-services.json

Adicione o app iOS:

Informe o bundle identifier (ex: com.seunome.chatapp)

Faça download do arquivo GoogleService-Info.plist

No Firebase Console, ative o Firestore e o Cloud Messaging.

(Opcional) Configure autenticação (email/senha ou anônima).

Coloque os arquivos baixados no projeto:

android/app/google-services.json

ios/Runner/GoogleService-Info.plist


📲 Executando o projeto

Instale as dependências:
flutter pub get

Execute o app no emulador ou dispositivo:
flutter run


🛠️ Funcionalidades implementadas
Chat em tempo real com textos e imagens

Upload de imagens usando câmera e galeria

Avatar do usuário com imagem padrão ou customizada

Recebimento de notificações push quando mensagens novas chegam

Persistência dos dados no Firestore


## Screenshots

<h3 align="center">📸 Screenshots</h3>

<table>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/c173ac40-f56c-4978-bbbe-1966fe6067e5" width="50"/></td>
    <td><img src="https://github.com/user-attachments/assets/163f2f4a-438e-4a2e-9e84-61aa3cbfcc00" width="50"/></td>
    <td><img src="https://github.com/user-attachments/assets/2182215d-13ba-4dba-9a53-d49655c9e3f5" width="50"/></td>
    <td><img src="https://github.com/user-attachments/assets/5cd57f4b-dd39-4656-a0b4-4485cf98881d" width="50"/></td>
    <td><img src="https://github.com/user-attachments/assets/cfdbe350-0a82-4ee9-9254-b0008705f0a1" width="50"/></td>
  </tr>
</table>


