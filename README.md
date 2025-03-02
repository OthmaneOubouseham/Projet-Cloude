# Projet-Cloude

## Description

Projet-Cloude is a full-stack application that displays weather data. The backend is built with Node.js and Express, while the frontend is built with React. The application uses Docker for containerization and Jenkins for CI/CD.

## Project Structure

```
Projet-Cloude/
├── backend/
│   ├── package.json
│   ├── server.js
│   └── ...
├── frontend/
│   ├── public/
│   │   └── index.html
│   ├── src/
│   │   ├── components/
│   │   │   └── Weather.tsx
│   │   ├── App.tsx
│   │   └── ...
│   ├── package.json
│   └── ...
├── .env
├── Dockerfile
├── jenkinsfile
└── README.md
```

## Prerequisites

- Node.js
- Docker
- Jenkins
- Kubernetes (optional, for deployment)

## Getting Started

### Backend

1. Navigate to the `backend` directory:
   ```sh
   cd backend
   ```

2. Install dependencies:
   ```sh
   npm install
   ```

3. Start the backend server:
   ```sh
   npm start
   ```

### Frontend

1. Navigate to the `frontend` directory:
   ```sh
   cd frontend
   ```

2. Install dependencies:
   ```sh
   npm install
   ```

3. Start the frontend application:
   ```sh
   npm start
   ```

### Docker

1. Build the Docker image:
   ```sh
   docker build -t your-docker-username/cloude-app:latest .
   ```

2. Run the Docker container:
   ```sh
   docker run -p 3000:3000 your-docker-username/cloude-app:latest
   ```

### Jenkins

1. Set up a Jenkins pipeline job using the `jenkinsfile` in the root directory.
2. Configure the job to use your repository and branch.
3. Run the Jenkins job to build, push the Docker image, and deploy to Kubernetes.

## Environment Variables

Create a `.env` file in the root directory with the following content:

```properties
REACT_APP_API_KEY=your_api_key
DOCKER_USERNAME=your_docker_username
DOCKER_PASSWORD=your_docker_password
KUBE_CONFIG_PATH=path_to_your_kubeconfig
```

## Available Scripts

### Backend

- `npm start`: Start the backend server.
- `npm run dev`: Start the backend server in development mode.

### Frontend

- `npm start`: Start the frontend application.
- `npm run build`: Build the frontend application for production.
- `npm test`: Run tests.
