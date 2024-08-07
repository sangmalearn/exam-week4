<x-layout>
 <div class="container mx-auto">

    <form method="GET" action="{{ route('contacts.index') }}" class="mb-8 flex justify-between">
       <div class="sort">       
            <label for="" class=" px-4 py-2">Sort by</label>
            <select name="sort" id="sorttype" class="border border-gray-300 rounded-lg px-4 py-2" onChange="this.form.submit()">
            
                <option value="name" @if(request('sort') == 'name') selected @endif>Name</option>
                <option value="created_at" @if(request('sort') == 'created_at') selected @endif>Created at</option>
            </select>
        </div>
        <div class="search">
            <input type="text" name="search" value="{{ request('search') }}" placeholder="Search by name or email" class="border border-gray-300 rounded-lg px-4 py-2">
            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-lg">Search</button>
        </div>       
    
    </form>

    
    <div class="content flex justify-between border-b-2 border-blue mb-8">    
        <h1 class="text-2xl font-bold mb-4 ">Contact List</h1>

        <div class="mb-4">
          <a href="{{ route('contacts.create') }}" class="bg-green-500 text-white px-4 py-2 rounded-lg">Create New Contact</a>
        </div>
    </div>

<table class="table-auto">

  <thead>
    <tr class="text-sm">
      <th>Name</th>
      <th>Email</th>
      <th>Phone</th>
      <th>Adress</th>
      <th>Created Date</th>
      <th>Updated Date</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
  @foreach( $contacts as $contact)
    <tr class="text-sm py-2 bg-slate-50 hover:bg-slate-100 ...">
      <td class="px-3 py-2 w-48">{{$contact->name}}</td>
      <td class="px-3">{{$contact->email}}</td>
      <td class="px-3">{{$contact->phone}}</td>
      <td class="px-3">{{$contact->address}}</td>
      <td class="px-3">{{ $contact->created_at->format('d m y h:i a') }}</td>
      <td class="px-3">{{$contact->updated_at->format('d m y h:i a')}}</td>
      <td class="px-3 w-48">         
 
        <a href="{{ route('contacts.show', $contact) }}" class="text-blue-500"><button type="submit" class="bg-blue-500 text-white px-2 py-2 m-0 rounded-lg">View</button></a>
        <a href="{{ route('contacts.edit', $contact) }}" class="text-yellow-500 ml-2"><button type="submit" class="bg-orange-500 text-white px-2 py-2 m-0 rounded-lg">Edit</button></a>
        <form action="{{ route('contacts.destroy', $contact) }}" method="POST" class="inline ml-2" onsubmit="return confirm('Are you sure you want to delete this contact?');">
            @csrf
            @method('DELETE')
            <!-- <button type="submit" class="text-red-500">Delete</button> -->
            <button type="submit" class="bg-red-500 text-white px-2 py-2 m-0 rounded-lg">Delete</button>
        </form>
      </td>
    </tr>
    @endforeach     
  </tbody>
</table>
<div class="w-52 my-8">
  {{ $contacts->links() }}  
</div>
</div>




</x-layout>