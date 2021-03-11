<?php

namespace App\Services;

use App\Models\Membership;
use App\Models\Organization;
use App\Models\OrganizationRole;
use App\Models\OrganizationRoleCapacity;

class OrganizationService
{
    /**
     * List of Roles an organization has. Treat as enum
     * 
     * @var array associative
     */
    protected static $roles = ['none', 'Employer', 'InternshipProvider', 'StateEducationDepartment', 'NonProfit', 'School'];

    /**
     * List of Capacities an organization has. Treat as enum
     * 
     * @var array associative
     */
    protected static $capacities = ['none', 'CredentialAwarder', 'Employer', 'InternshipFacilitator', 'InternshipProvider', 'EducationPolicyInstitute', 'HighSchool'];

    /**
     * Returns a list of schools
     * 
     * @return Collection
     */
    public static function schools()
    {
        $organizations = OrganizationRole::where('role_id', array_search('School', self::$roles))->pluck('organization_id')->toArray();
        return Organization::whereIn('id', $organizations)->orderBy('name')->get();
    }

    /**
     * Returns a list of schools
     * 
     * @return Collection
     */
    public static function activeSchools()
    {
        $capacities     = Membership::groupBy('organization_role_capacity_id')->pluck('organization_role_capacity_id');
        $schoolRoles    = OrganizationRoleCapacity::whereIn('id', $capacities)->pluck('organization_role_id');
        $organizations  = OrganizationRole::whereIn('id', $schoolRoles)->pluck('organization_id');
        return Organization::whereIn('id', $organizations)->orderBy('name')->get();
    }

    /**
     * Returns a list of employers
     * 
     * @return array
     */
    public static function employers()
    {
        $organizations = OrganizationRole::where('role_id', array_search('Employer', self::$roles))->pluck('organization_id')->toArray();
        return Organization::whereIn('id', $organizations)->get();
    }
}
