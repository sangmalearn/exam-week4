<x-layout>
   
<div class="w-1/2 border border-2 border-black-300 rounded-xl mx-auto p-10">
    <div class="content flex justify-between border-b-2 border-blue mb-8">    
        <h1 class="text-2xl font-bold mb-4 ">Contact Details</h1>

        <div class="mb-4">
            <a href="{{ route('contacts.index') }}" class="bg-blue-500 text-white px-4 py-2 rounded-lg">Back to Main Page</a>
        </div>
    </div>
    <div class="single-content bg-white py-2  ">
        <p class="py-2 border-b-1 border-black-200">Name:<span class="font-semibold">{{ $contact->name }}</span></p>
        <p class="py-2 border-b-1 border-black-200">Email      :<span class="font-semibold">{{ $contact->email }}</strong></p>
        <p class="py-2 border-b-1 border-black-200">Phone      :<span class="font-semibold">{{ $contact->phone }}</strong></p>
        <p class="py-2 border-b-1 border-black-200">Address    :<span class="font-semibold">{{ $contact->address }}</strong></p>
        <p class="py-2 border-b-1 border-black-200">Created At :<span class="font-semibold"> {{ $contact->created_at->format('Y-m-d') }}</strong></p>
    </div>
</div>

</x-layout>