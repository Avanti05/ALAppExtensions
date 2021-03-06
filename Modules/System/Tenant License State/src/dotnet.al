﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

dotnet
{
    assembly("Microsoft.Dynamics.Nav.Ncl")
    {
        Version='15.0.0.0';
        Culture='neutral';
        PublicKeyToken='31bf3856ad364e35';

        type("Microsoft.Dynamics.Nav.Runtime.TenantLicenseStatePeriodProvider";"TenantLicenseStatePeriodProvider")
        {
        }

        type("Microsoft.Dynamics.Nav.Runtime.TenantLicenseStateProvider";"TenantLicenseStateProvider")
        {
        }
    }

}
