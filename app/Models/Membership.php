<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Membership extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'alumni_tracker_app_organizationrolecapacitymembership';

    /**
     * The attributes that are non-fillable.
     *
     * @var array
     */
    protected $guarded = [ 'id' ];
}
