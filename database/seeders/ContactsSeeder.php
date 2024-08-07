<?php

namespace Database\Seeders;

use App\Models\Contact;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Validation\Rules\Unique;
use Faker\Factory as Faker;

class ContactsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        Contact::truncate();

        $faker=Faker::create();
        for($i=0;$i<20;$i++){
            Contact::create([
                'name'=> $faker->name,
                'email'=> $faker->unique()->safeEmail,
                'phone'=> $faker->phoneNumber,
                'address'=> $faker->address
            ]);
        }
    }
}
