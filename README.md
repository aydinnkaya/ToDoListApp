# ToDoListApp 📝

**ToDoListApp** is an advanced task management application developed using **SwiftUI** and the **MVVM architecture**. It leverages **Firestore Database** for real-time data synchronization and **Firebase Authentication** for secure user access. The app is designed to provide a clean and responsive user experience, helping users effectively manage and organize their tasks.

---

## 🚀 Key Features

### 🌟 **Clean and Scalable MVVM Architecture**
The project is built using the **Model-View-ViewModel (MVVM)** architecture, providing a well-structured, modular codebase:
  - **Model**: Handles data and business logic.
  - **View**: Represents the user interface.
  - **ViewModel**: Manages the communication between the Model and View, making the app highly scalable and maintainable.

### 💾 **Real-Time Data Sync with Firestore**
- **Firestore** powers the app’s data storage, offering real-time updates and synchronization across multiple devices.
- Tasks are stored and updated instantly, ensuring users always have the latest information.

### 🔐 **Comprehensive Firebase Authentication**
- **Firebase Authentication** provides secure login functionality with options for email/password, social media accounts, and third-party identity providers.
- User sessions are managed efficiently, ensuring data integrity and secure access.

### 🎨 **Modern UI with SwiftUI**
- Developed entirely using **SwiftUI**, Apple's declarative UI framework, allowing for a sleek, responsive interface.
- **SwiftUI** enables rapid iteration and an exceptional user experience across all iOS devices, including iPhones and iPads.

### 🛠️ **Complete Task Management**
- Users can easily add, edit, and delete tasks with a few taps.
- Assign priorities to tasks, mark them as complete, and organize them with custom labels and colors.
- Tasks are synchronized across devices in real time, ensuring seamless task management.

### 🔔 **Custom Notifications and Reminders**
- Users can set reminders and receive push notifications for tasks.
- Notification settings are fully customizable, allowing users to control when and how they receive alerts.

---

## 🎥 Demo Video

See **ToDoListApp** in action with this detailed walkthrough:[Demo Video](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/ecfaf2cc-3114-430a-86dd-7c5f3920a0fa)

[![Watch the video](https://img.youtube.com/vi/ecfaf2cc-3114-430a-86dd-7c5f3920a0fa/0.jpg)](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/ecfaf2cc-3114-430a-86dd-7c5f3920a0fa)

---

## 📸 App Screenshots

| Task Overview | Task Details | Add New Task |
|:-------------:|:------------:|:------------:|
| ![Task Overview](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/1950154b-818d-4b55-8148-55908b7182e0) | ![Task Details](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/b85a9e3b-ef4a-4296-b930-1488cf2275fd) | ![Add New Task](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/6c7ee92d-af8f-4c81-a057-56d85d7035ea) |

| Completed Task View | Task Creation Form | Task Notification |
|:------------------:|:------------------:|:-----------------:|
| ![Completed Task](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/20bde16c-697b-4e0b-8a7f-0fcbd5d8f86e) | ![Task Form](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/6c7ee92d-af8f-4c81-a057-56d85d7035ea) | ![Task Notification](https://github.com/aydinnkaya/ToDoListApp/assets/128883262/6c7ee92d-af8f-4c81-a057-56d85d7035ea) |

---

## 🛠️ Technologies Used

- **SwiftUI**: Apple's modern UI framework for declarative app development.
- **MVVM Architecture**: Separation of concerns for a cleaner and more maintainable codebase.
- **Firestore Database**: Real-time cloud-based NoSQL database for instant data synchronization.
- **Firebase Authentication**: Secure and flexible authentication system.
- **Push Notifications**: Task reminders and alerts for an enhanced user experience.
- **CocoaPods**: Dependency manager for integrating Firebase libraries efficiently.

---

## 🔧 Installation and Setup

To run **ToDoListApp** on your local machine, follow these steps:

### Prerequisites
- **Xcode** (latest version) should be installed.
- **CocoaPods** should be installed on your system.

### Step-by-Step Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/aydinnkaya/ToDoListApp.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd ToDoListApp
   ```

3. **Install dependencies using CocoaPods**:
   If **CocoaPods** is installed, run the following to install Firebase dependencies:
   ```bash
   pod install
   ```

4. **Open the project in Xcode**:
   Open the `.xcworkspace` file to ensure proper integration of CocoaPods dependencies.

5. **Set up Firebase**:
   - Log in to the [Firebase Console](https://console.firebase.google.com/).
   - Create a new Firebase project and register your iOS app.
   - Download the `GoogleService-Info.plist` file and add it to your Xcode project.

6. **Build and run the project**:
   Select your preferred device or simulator and press `Cmd + R` to build and run the app.

---

## 👥 Contributing

We welcome contributions to improve the **ToDoListApp**. If you'd like to contribute, follow these steps:

1. **Fork the repository**.
2. **Create a feature branch**: `git checkout -b feature-branch-name`.
3. **Make your changes** and commit them: `git commit -m 'Added new feature'`.
4. **Push to your branch**: `git push origin feature-branch-name`.
5. **Open a pull request**: We'll review your changes and merge them into the main branch.

