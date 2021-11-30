# Advent Of Code Swift Template

This repository serves as a template for an Xcode project set up to solve the Advent of Code problems in Swift. No attempt is made to automate the fetching of inputs. It's a simple MacOS command line project, meaning there are no resources bundled, so the inputs must be held in a directory and specified with a command line argument.

## Command Line Arguments

The command line arguments when running in Xcode can easily be set by going to `Product -> Scheme -> Edit Scheme...` and clicking on the Arguments tab in the Run configuration.

- Specify the path to the folder where the inputs can be found by passing in the `-i` argument. E.g. `-i /path/to/inputs`. Inputs should be saved in files matching the format `day%d_input.txt`, for instance `day20_input.txt`.
- Specify the day to run using the `-d` argument. E.g. `-d 4`. If no specific day is found, all 25 days are run.

## Requirements

- Xcode 13+

## Architecture

It's a very simple architecture with a `Day` protocol adopted by various day classes. Each day has a `part1` and a `part2` function that take in an input and returns some `CustomStringConvertible`, meaning you can return an `Int`, `String`, `Bool`, etc. Templates are provided for each day's unit tests as well to test parsing, algorithms, etc.

An example `Day1.swift` and `Day1Tests.swift` are provided to solve the [2020 Problem 1](https://adventofcode.com/2020/day/1)