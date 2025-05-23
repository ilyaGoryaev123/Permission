// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Permission",
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "Permission",
			targets: ["Permission"]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "Permission",
			path: "Source",
			swiftSettings: [
				.define("PERMISSION_BLUETOOTH"),
				.define("PERMISSION_PHOTOS"),
				.define("PERMISSION_CAMERA")
			]
		),
	]
)


