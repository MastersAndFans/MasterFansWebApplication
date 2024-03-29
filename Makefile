# Makefile for building and testing with Docker Compose
.PHONY: build test clean-build clean-test

# Default target executed when no arguments are given to make.
default: build

# Target for building the application with Docker Compose
build:
	@echo "Building the application..."
	docker-compose -f docker-compose.yml up --build

# Target for running tests with Docker Compose
test:
	@echo "Running tests..."
	docker-compose -f docker-compose.test.yml up --build --abort-on-container-exit

# Target for tearing down the dev environment
clean-build:
	@echo "Cleaning up dev environment..."
	docker-compose -f docker-compose.yml down

# Target for tearing down the test environment
clean-test:
	@echo "Cleaning up test environment..."
	docker-compose -f docker-compose.test.yml down


