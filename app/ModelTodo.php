<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use SoftDeletes;

class ModelTodo extends Model
{
   protected $table = 'kategori'; //nama table yang kita buat lewat migration adalah todo
   protected $fillable = ['jenisbuku'];
   protected $guarded = ['idkat'];
}