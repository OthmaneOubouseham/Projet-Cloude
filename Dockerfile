# Stage 1: Build frontend
FROM node:14-alpine AS frontend-build

WORKDIR /app/frontend

COPY frontend/package*.json ./
RUN npm install --legacy-peer-deps

COPY frontend ./
RUN npm run build

# Stage 2: Build backend
FROM node:14-alpine AS backend-build

WORKDIR /app/backend

COPY backend/package*.json ./
RUN npm install --legacy-peer-deps

COPY backend ./

# Stage 3: Final stage
FROM node:14-alpine

WORKDIR /app

COPY --from=backend-build /app/backend ./
COPY --from=frontend-build /app/frontend/build ./public

RUN npm install --omit=dev

EXPOSE 3000

CMD ["npm", "start"]
