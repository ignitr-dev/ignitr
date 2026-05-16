# Ignitr

Getx template for [Igntir Framework](https://github.com/ignitr-dev/ignitr_cli)

## Introduction

Ignitr is a simple yet powerful flutter mini framework, designed to simplify the development of Flutter applications. It provides a set of tools and utilities to streamline the process of building Flutter apps, making it easier for developers to create high-quality, feature-rich applications. Ignitr is designed to be flexible and customizable, allowing developers to tailor it to their specific needs. It is highly inpired by the other `MVC` frameworks like [Laravel](https://laravel.com) and [CodeIgniter](https://www.codeigniter.com).

## Getting Started

```shell
dart pub global activate ignitr_cli
```

This command will install the `ignitr` cli globally in your system, now you can use the built in Ignitr commands to get started with your project development.

Checkout the Ignitr CLI on: [GitHub](https://github.com/ignitr-dev/ignitr_cli), [pub.dev](https://pub.dev/packages/ignitr_cli)

## Usage

### Create new Ignitr Project

```shell
ignitr create <project_name>
```

- _<project_name>_: This will be the project name you want to generate, keep the project name in `lower_snake_case` as per flutter's recommendation.

## Highlights

Here are some fantastic features you’ll get by default when scaffolding your project with this starter template:

- **MVC Pattern**: The project follows the `MVC` pattern, which separates logic, UI, and models for better manageability.
- **Modular Structure**: The modular structure allows developers to reuse modules across different projects, offering greater flexibility and scalability.
- **Module/File Generator**: A simple generator command has been added, enabling you to generate any module or file within a module with a single command.
- **Stores**: Ignitr comes with build in shared store system, it contains:
  - **Reactive Store**: This is the shared reactive state that can be be used anywhere within the application, it will be lost when the app is closed.
  - **Persistent Store**: This is the persistent shared store value it will be persisted even the app is closed and re-launched again, it will only destroy when the app is uninstalled.
  - **File Store**: Coming Soon

### Further Documentation

Please refer to the **[Ignitr Documentation](https://ignitr.devsbuddy.com)** for more detailed information and examples on how to use Ignitr.
