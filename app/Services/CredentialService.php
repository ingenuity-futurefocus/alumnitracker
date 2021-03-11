<?php

namespace App\Services;

use App\Models\AlumnusCredential;
use App\Models\Credential;
use App\Models\CredentialType;

class CredentialService
{
    /**
     * Formats checkin data
     * 
     * @param int $personID
     * 
     * @return array associative
     */
    public static function getCredentialData(int $personID, $types = null)
    {
        $credentials = AlumnusCredential::where('alumnus_person_id', $personID)->get();
        $types = $types ?? CredentialType::all();

        foreach ($credentials as $row) {
            $credential = Credential::find($row->credential_id);
            $data[] = [
                'date' => $row->earned_on,
                'name' => $credential->focus,
                'type' => $types->find($credential->type_id)->type,
                'org'  => $credential->organization()->name
            ];
        }

        return $data ?? null;
    }
}