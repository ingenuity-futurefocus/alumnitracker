<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Enrollment extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'alumni_tracker_app_alumnuscheckinenrollment';

    /**
     * The attributes that are non-fillable.
     *
     * @var array
     */
    protected $guarded = [ 'id' ];

    /**
     * prevent timestamps from being used
     * 
     * @var boolean
     */
    public $timestamps = false;
}
