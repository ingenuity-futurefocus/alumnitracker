<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrganizationRoleCapacity extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'alumni_tracker_app_organizationrolecapacity';

    /**
     * The attributes that are non-fillable.
     *
     * @var array
     */
    protected $guarded = [ 'id' ];

    /**
     * Gets related OrganizationRole
     */
    public function organizationRole()
    {
        return OrganizationRole::find($this->organization_role_id);
    }

    /**
     * Gets related Organization
     */
    public function organization()
    {
        return Organization::find($this->organizationRole()->id);
    }
}
