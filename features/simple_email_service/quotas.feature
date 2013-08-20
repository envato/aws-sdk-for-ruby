# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

# language: en
@ses @quotas
Feature: SES Quotas

  Scenario: Getting SES quotas
    When I get quotas
    Then I should get a hash with the following keys and value types:
    | KEY                | TYPE    |
    | max_24_hour_send   | Integer |
    | max_send_rate      | Float   |
    | sent_last_24_hours | Integer |
    And a request should have been made like:
    | TYPE  | NAME   | VALUE        |
    | param | Action | GetSendQuota |
