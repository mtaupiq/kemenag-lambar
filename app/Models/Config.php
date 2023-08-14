<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Config extends Model
{
    use HasFactory;

    protected $fillable = [
                            'logo',
                            'footer_text',
                            'ministry_name',
                            'phone',
                            'email',
                            'address',
                            'long',
                            'lat',
                            'copyright'
                        ];
}
