// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Exposes functionality to retrieve the device upgrade tag.
/// </summary>
codeunit 9058 "Plan Upgrade Tag"
{
    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Upgrade Tag", 'OnGetPerDatabaseUpgradeTags', '', false, false)]
    local procedure RegisterPerDatabaseTags(var PerDatabaseUpgradeTags: List of [Code[250]])
    begin
        PerDatabaseUpgradeTags.Add(GetAddDeviceISVEmbUpgradeTag());
    end;

    /// <summary>
    /// Returns the device upgrade tag.
    /// </summary>
    /// <returns>The device upgrade tag.</returns>
    procedure GetAddDeviceISVEmbUpgradeTag(): Code[250]
    begin
        exit('MS-322095-AddDeviceISVEmbPlan-20190821');
    end;
}

