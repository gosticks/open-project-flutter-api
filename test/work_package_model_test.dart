//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for WorkPackageModel
void main() {
  // final instance = WorkPackageModel();

  group('test WorkPackageModel', () {
    // Work package id
    // Object id
    test('to test the property `id`', () async {
      // TODO
    });

    // The version of the item as used for optimistic locking
    // Object lockVersion
    test('to test the property `lockVersion`', () async {
      // TODO
    });

    // Work package subject
    // Object subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // Object type
    test('to test the property `type`', () async {
      // TODO
    });

    // WorkPackageModelDescription description
    test('to test the property `description`', () async {
      // TODO
    });

    // If false (default) schedule automatically.
    // Object scheduleManually
    test('to test the property `scheduleManually`', () async {
      // TODO
    });

    // If true, the work package is in a readonly status so with the exception of the status, no other property can be altered.
    // Object readonly
    test('to test the property `readonly`', () async {
      // TODO
    });

    // Scheduled beginning of a work package
    // Object startDate
    test('to test the property `startDate`', () async {
      // TODO
    });

    // Scheduled end of a work package
    // Object dueDate
    test('to test the property `dueDate`', () async {
      // TODO
    });

    // Date on which a milestone is achieved
    // Object date
    test('to test the property `date`', () async {
      // TODO
    });

    // Similar to start date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
    // Object derivedStartDate
    test('to test the property `derivedStartDate`', () async {
      // TODO
    });

    // Similar to due date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
    // Object derivedDueDate
    test('to test the property `derivedDueDate`', () async {
      // TODO
    });

    // **(NOT IMPLEMENTED)** The amount of time in hours the work package needs to be completed. Not available for milestone type of work packages.
    // Object duration
    test('to test the property `duration`', () async {
      // TODO
    });

    // Time a work package likely needs to be completed excluding its descendants
    // Object estimatedTime
    test('to test the property `estimatedTime`', () async {
      // TODO
    });

    // Time a work package likely needs to be completed including its descendants
    // Object derivedEstimatedTime
    test('to test the property `derivedEstimatedTime`', () async {
      // TODO
    });

    // **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day.
    // Object ignoreNonWorkingDays
    test('to test the property `ignoreNonWorkingDays`', () async {
      // TODO
    });

    // The time booked for this work package by users working on it  # Conditions  **Permission** view time entries
    // Object spentTime
    test('to test the property `spentTime`', () async {
      // TODO
    });

    // Amount of total completion for a work package
    // Object percentageDone
    test('to test the property `percentageDone`', () async {
      // TODO
    });

    // Time of creation
    // Object createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Time of the most recent change to the work package
    // Object updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // WorkPackageModelLinks links
    test('to test the property `links`', () async {
      // TODO
    });


  });

}
