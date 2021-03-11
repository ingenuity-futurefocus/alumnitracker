<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrganizationRole extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'alumni_tracker_app_organizationrole';

    /**
     * The attributes that are non-fillable.
     *
     * @var array
     */
    protected $guarded = [ 'id' ];

    /** 
     * Returns organization object
     */
    public function organization()
    {
        return Organization::find($this->organization_id);
    }

    /**
     * returns Organization Role Capacity
     */
    public function capacity()
    {
        return OrganizationRoleCapacity::where('organization_role_id', $this->id)->first();
    }
}
