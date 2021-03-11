<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alumnus extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'alumni_tracker_app_alumnus';

    /**
     * The attributes that are non-fillable.
     *
     * @var array
     */
    protected $guarded = [ 'id' ];

    /**
     * Gets related severence model
     */
    public function severence()
    {
        return ($this->severence_id) ? Severence::find($this->severence_id) : null;
    }

    /**
     * Gets related xxx model
     */
    public function person()
    {
        return Person::find($this->person_id);
    }

    /**
     * Gets related OrganizationRoleCapacity
     */
    public function capacity()
    {
        return OrganizationRoleCapacity::find($this->organization_role_capacity_id);
    }

    /**
     * retrieve the organization
     */
    public function organization()
    {
        return $this->capacity()->organizationRole()->organization();
    }
}
