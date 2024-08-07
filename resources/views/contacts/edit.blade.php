<x-layout>
<!-- resources/views/contacts/edit.blade.php -->


<div class="w-1/2 border border-2 border-black-300 rounded-xl mx-auto p-10">
    <div class="content flex justify-between border-b-2 border-blue mb-8">    
        <h1 class="text-2xl font-bold mb-4 ">Edit Contact</h1>

        <div class="mb-4">
            <a href="{{ route('contacts.index') }}" class="bg-blue-500 text-white px-4 py-2 rounded-lg">Back to Main Page</a>
        </div>
    </div>

<div class="container mx-auto p-4">   

    @if (session('success'))
        <div class="bg-green-500 text-white p-4 rounded-lg mb-4">
            {{ session('success') }}
        </div>
    @endif
 

    @if ($errors->any())
        <div class="bg-red-500 text-white p-4 rounded-lg mb-4">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="POST" action="{{ route('contacts.update', $contact->id) }}">
        @csrf
        @method('PUT')

        <div class="mb-4">
            <label for="name" class="block text-gray-700 font-bold mb-2">Name</label>
            <input type="text" id="name" name="name" value="{{ old('name', $contact->name) }}" required class="border border-gray-300 rounded-lg px-4 py-2 w-full">
        </div>

        <div class="mb-4">
            <label for="email" class="block text-gray-700 font-bold mb-2">Email</label>
            <input type="email" id="email" name="email" value="{{ old('email', $contact->email) }}" required class="border border-gray-300 rounded-lg px-4 py-2 w-full">
        </div>

        <div class="mb-4">
            <label for="phone" class="block text-gray-700 font-bold mb-2">Phone</label>
            <input type="text" id="phone" name="phone" value="{{ old('phone', $contact->phone) }}" class="border border-gray-300 rounded-lg px-4 py-2 w-full">
        </div>

        <div class="mb-4">
            <label for="address" class="block text-gray-700 font-bold mb-2">Address</label>
            <input type="text" id="address" name="address" value="{{ old('address', $contact->address) }}" class="border border-gray-300 rounded-lg px-4 py-2 w-full">
        </div>

        <div class="mb-4">
            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-lg">Update Contact</button>
            <a href="{{ route('contacts.index') }}" class="bg-gray-500 text-white px-4 py-2 rounded-lg">Cancel</a>
        </div>
    </form>
</div>
</div>

</x-layout>