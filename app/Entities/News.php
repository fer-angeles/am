<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = 'news';

    protected $fillable = [];

    protected $appends = ['formattedDate'];

    protected $dates = [
        'created_at',
        'updated_at'
    ];

    public function getFormattedDateAttribute()
    {
        return $this->created_at->format('Ymd');
    }

}
