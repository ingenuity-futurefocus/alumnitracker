<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'alumni_tracker_app_person';

    /**
     * The attributes that are non-fillable.
     *
     * @var array
     */
    protected $guarded = [ 'id' ];

    /**
     * prevent usage of timestamps
     * 
     * @var boolean
     */
    public $timestamps = false;

    /**
     * Returns Street address and unit combined, with defaults
     * 
     * @return string
     */
    public function streetAddress() : string
    {
        $streetAddress = $this->mailing_street ?? "No Street Address";
        $streetAddress .= ($this->mailing_unit) ? " - $this->mailing_unit" : null;
        
        return $streetAddress;
    }

    /**
     * Returns combines city, state, zip with defaults
     * 
     * @return string
     */
    public function cityStateZip() : string
    {
        $city   = $this->mailing_city ?? "No City";
        $state  = ($this->mailing_state_id) ? State::find($this->mailing_state_id)->abbreviation : "ST";
        $zip    = $this->mailing_zip ?? "XXXXX";

        return "$city, $state, $zip";
    }

    /**
     * Returns user's first and last name
     * 
     * @return string
     */
    public function fullname()
    {
        return $this->first_name.' '.$this->last_name;
    }

    /**
     * Retreive a list of checkins for an alumnus
     * 
     * @return Collection
     */
    public function checkins()
    {
        return $this->hasMany(Checkin::class, 'alumnus_person_id')->orderBy('occured', 'DESC');
    }
}
