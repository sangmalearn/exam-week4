<x-layout>


<div class="w-1/2 border border-2 border-black-300 rounded-xl mx-auto p-10">
    <div class="content flex justify-between border-b-2 border-blue mb-8">    
        <h1 class="text-2xl font-bold mb-4 ">Create New Contact</h1>

        <div class="mb-4">
            <a href="{{ route('contacts.index') }}" class="bg-blue-500 text-white px-4 py-2 rounded-lg">Back to Main Page</a>
        </div>
    </div>

<div class="container mx-auto p-4">   

    <form action="{{ route('contacts.store') }}" method="POST">
        @csrf
        <div class="mb-4">
            <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
            <input type="text" name="name" id="name" value="{{ old('name') }}" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" required>
        </div>
        <div class="mb-4">
            <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
            <input type="email" name="email" id="email" value="{{ old('email') }}" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" required>
        </div>
        <div class="mb-4">
            <label for="phone" class="block text-sm font-medium text-gray-700">Phone</label>
            <input type="text" name="phone" id="phone" value="{{ old('phone') }}" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm">
        </div>
        <div class="mb-4">
            <label for="address" class="block text-sm font-medium text-gray-700">Address</label>
            <input type="text" name="address" id="address" value="{{ old('address') }}" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm">
        </div>
        <div>
            <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded-lg">Save Contact</button>
        </div>
    </form>
</div>

</div>
    
</x-layout>