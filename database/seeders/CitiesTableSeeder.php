<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\City;
use App\Models\State;
use Illuminate\Support\Facades\DB;

class CitiesTableSeeder extends Seeder
{
    public function run()
    {
        $cities = [
            'Andhra Pradesh' => [
                'Visakhapatnam', 'Vijayawada', 'Tirupati', 'Guntur', 'Kakinada', 
                'Rajahmundry', 'Nellore', 'Chittoor', 'Anantapur', 'Kadapa'
            ],
            'Arunachal Pradesh' => [
                'Itanagar', 'Tawang', 'Naharlagun', 'Bomdila', 'Pasighat',
                'Tezu', 'Ziro', 'Along', 'Yingkiong', 'Namsai'
            ],
            'Assam' => [
                'Guwahati', 'Silchar', 'Dibrugarh', 'Jorhat', 'Tezpur',
                'Nagaon', 'Bongaigaon', 'Hailakandi', 'Karimganj', 'Dhemaji'
            ],
            'Bihar' => [
                'Patna', 'Gaya', 'Bhagalpur', 'Munger', 'Muzaffarpur',
                'Darbhanga', 'Purnia', 'Katihar', 'Sasaram', 'Arrah'
            ],
            'Chhattisgarh' => [
                'Raipur', 'Bilaspur', 'Korba', 'Durg', 'Jagdalpur',
                'Ambikapur', 'Raigarh', 'Kanker', 'Bhilai', 'Janjgir'
            ],
            'Goa' => [
                'Panaji', 'Margao', 'Vasco da Gama', 'Mapusa', 'Ponda',
                'Cortalim', 'Sanguem', 'Bicholim', 'Canacona', 'Quepem'
            ],
            'Gujarat' => [
                'Ahmedabad', 'Surat', 'Vadodara', 'Rajkot', 'Bhavnagar',
                'Junagadh', 'Gandhinagar', 'Narmada', 'Palanpur', 'Mehsana'
            ],
            'Haryana' => [
                'Chandigarh', 'Faridabad', 'Gurgaon', 'Hisar', 'Panipat',
                'Karnal', 'Ambala', 'Rohtak', 'Yamunanagar', 'Jind'
            ],
            'Himachal Pradesh' => [
                'Shimla', 'Manali', 'Dharamshala', 'Kullu', 'Solan',
                'Mandi', 'Una', 'Bilaspur', 'Hamirpur', 'Palampur'
            ],
            'Jharkhand' => [
                'Ranchi', 'Jamshedpur', 'Dhanbad', 'Bokaro', 'Hazaribagh',
                'Deoghar', 'Giridih', 'Chaibasa', 'Medininagar', 'Koderma'
            ],
            'Karnataka' => [
                'Bengaluru', 'Mysuru', 'Hubli', 'Dharwad', 'Belagavi',
                'Mangaluru', 'Shimoga', 'Udupi', 'Bidar', 'Gulbarga'
            ],
            'Kerala' => [
                'Thiruvananthapuram', 'Kochi', 'Kozhikode', 'Kannur', 'Palakkad',
                'Malappuram', 'Thrissur', 'Alappuzha', 'Kottayam', 'Pathanamthitta'
            ],
            'Madhya Pradesh' => [
                'Bhopal', 'Indore', 'Gwalior', 'Jabalpur', 'Ujjain',
                'Sagar', 'Satna', 'Ratlam', 'Dewas', 'Khandwa'
            ],
            'Maharashtra' => [
                'Mumbai', 'Pune', 'Nagpur', 'Thane', 'Nashik',
                'Aurangabad', 'Solapur', 'Kolhapur', 'Amravati', 'Latur'
            ],
            'Manipur' => [
                'Imphal', 'Thoubal', 'Churachandpur', 'Bishnupur', 'Jiribam',
                'Kakching', 'Noney', 'Senapati', 'Tamenglong', 'Ukhrul'
            ],
            'Meghalaya' => [
                'Shillong', 'Tura', 'Jowai', 'Berdorgre', 'Nongstoin',
                'Mairang', 'Rongram', 'Williamnagar', 'Dadenggre', 'Mawkyrwat'
            ],
            'Mizoram' => [
                'Aizawl', 'Lunglei', 'Champhai', 'Kolasib', 'Mamit',
                'Serchhip', 'Saiha', 'Lawngtlai', 'Hnahthial', 'Khawzawl'
            ],
            'Nagaland' => [
                'Kohima', 'Dimapur', 'Wokha', 'Mokokchung', 'Mon',
                'Phek', 'Zunheboto', 'Tuensang', 'Kiphire', 'Longleng'
            ],
            'Odisha' => [
                'Bhubaneswar', 'Cuttack', 'Rourkela', 'Berhampur', 'Sambalpur',
                'Balasore', 'Jharsuguda', 'Baripada', 'Jajpur', 'Kendujhar'
            ],
            'Punjab' => [
                'Chandigarh', 'Amritsar', 'Jalandhar', 'Ludhiana', 'Patiala',
                'Bathinda', 'Mohali', 'Hoshiarpur', 'Kapurthala', 'Fatehgarh Sahib'
            ],
            'Rajasthan' => [
                'Jaipur', 'Jodhpur', 'Udaipur', 'Kota', 'Bikaner',
                'Ajmer', 'Alwar', 'Sikar', 'Sri Ganganagar', 'Barmer'
            ],
            'Sikkim' => [
                'Gangtok', 'Namchi', 'Pelling', 'Gyalshing', 'Mangan',
                'Yuksom', 'Rongli', 'Singtam', 'Khamdong', 'Temi Tarku'
            ],
            'Tamil Nadu' => [
                'Chennai', 'Coimbatore', 'Madurai', 'Tiruchirappalli', 'Salem',
                'Erode', 'Tirunelveli', 'Vellore', 'Tiruppur', 'Kanchipuram'
            ],
            'Telangana' => [
                'Hyderabad', 'Warangal', 'Nizamabad', 'Khammam', 'Karimnagar',
                'Mahabubnagar', 'Rangareddy', 'Adilabad', 'Medak', 'Nalgonda'
            ],
            'Tripura' => [
                'Agartala', 'Udaipur', 'Dharmanagar', 'Kailashahar', 'Ambassa',
                'Belonia', 'Sabroom', 'Teliamura', 'Khowai', 'Jogendranagar'
            ],
            'Uttar Pradesh' => [
                'Lucknow', 'Kanpur', 'Agra', 'Varanasi', 'Allahabad',
                'Meerut', 'Ghaziabad', 'Bareilly', 'Aligarh', 'Moradabad'
            ],
            'Uttarakhand' => [
                'Dehradun', 'Haridwar', 'Nainital', 'Rudrapur', 'Roorkee',
                'Haldwani', 'Pithoragarh', 'Kashipur', 'Rishikesh', 'Tehri'
            ],
            'West Bengal' => [
                'Kolkata', 'Siliguri', 'Durgapur', 'Asansol', 'Howrah',
                'Jalpaiguri', 'Kharagpur', 'Bardhaman', 'Bankura', 'Medinipur'
            ]
        ];

        // Prepare data for bulk insert
        $citiesData = [];
        foreach ($cities as $stateName => $cityList) {
            $state = State::where('name', $stateName)->first();
            foreach ($cityList as $city) {
                $citiesData[] = [
                    'name' => $city,
                    'state_id' => $state->id,
                    'created_at' => now(),
                    'updated_at' => now()
                ];
            }
        }

        // Insert data in bulk
        DB::table('cities')->insert($citiesData);
    }
}
