#!/bin/bash

# Add runtime dependencies
pnpm add class-validator@latest -r
pnpm add class-transformer@latest -r
pnpm add dotenv@latest -r
pnpm add @nestjs/microservices@latest -r
pnpm add oracledb@latest -r
pnpm add globals@latest -r
pnpm add joi@latest -r

# Add dev dependencies
pnpm add -D @nestjs/config@latest -r
pnpm add -D @nestjs/mapped-types@latest -r
pnpm add -D @typescript-eslint/eslint-plugin@latest -r
pnpm add -D @typescript-eslint/parser@latest -r
pnpm add -D typescript-eslint@latest -r
pnpm add -D @eslint/js@latest -r
pnpm add -D eslint-config-prettier@latest -r
pnpm add -D eslint-plugin-prettier@latest -r
pnpm add -D eslint-plugin-simple-import-sort@latest -r
pnpm add -D eslint-plugin-unused-imports@latest -r
pnpm add -D prettier@latest -r
pnpm add -D eslint@latest -r
pnpm add -D @types/oracledb -r

echo "✅ All packages installed successfully."
