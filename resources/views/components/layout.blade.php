<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Management System</title>
    @vite('resources/css/app.css')
</head>
<body>
    <div class="w-full bg-gray-100 mt-0 "> 
        <div class="container mx-auto mb-12 py-12">
            <h1 class="text-black-900 text-3xl uppercase block... text-center font-bold">Contact Management</h1>
            <h4 class="text-black-200 text-xl block... text-center">Contact Person Information</h4>
        </div>
    </div>
    <div class="container mx-auto">
        
        {{ $slot }}
    </div>
</body>
</html>