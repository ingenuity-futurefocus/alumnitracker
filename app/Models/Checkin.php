<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Checkin extends Model
{
    use HasFactory;

    /**
     * The table associated with the model
     * 
     * @var string
     */
    protected $table = 'alumni_tracker_app_alumnuscheckin';

    /**
     * The attributes that are non-fillable
     * 
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * prevent timestamps from being used
     * 
     * @var boolean
     */
    public $timestamps = false;

    /**
     * Returns related checkin employment
     * 
     * @return Employment
     */
    public function employment()
    {
        return Employment::where('alumnus_checkin_id', $this->id)->first();
    }

    /**
     * Returns related checkin enrollment
     * 
     * @return Enrollment
     */
    public function enrollment()
    {
        return Enrollment::where('alumnus_checkin_id', $this->id)->first();
    }

    /**
     * Determines whether a checkin needs employment added
     * 
     * @return boolean
     */
    public function needWork()
    {
        if ($this->employed)
            return !($this->employment());

        return false;
    }

    /**
     * Determines whether a checkin needs enrollment added
     * 
     * @return boolean
     */
    public function needSchool()
    {
        if ($this->enrolled)
            return !($this->enrollment());

        return false;
    }
}
