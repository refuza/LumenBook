<?php

namespace App\Http\Controllers;
use App\ModelTodo;
use App\ModelBuku;
use Illuminate\Http\Request;

class todoController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index(){
		$data = ModelTodo::all();
		return response($data);
	}

	public function show($id){
		$data = ModelTodo::where('id',$id)->get();
		return response ($data);
	}

	public function store(Request $request){
		$data = new ModelTodo();
		$data->jenisbuku = $request->input('jenisbuku');
		//$data->alamat = $request->input('alamat');
		//$data->email = $request->input('email');
		//$data->jenjang = $request->input('jenjang');
		//$data->notelp = $request->input('notelp');
		$data->save();

		return response('Berhasil Tambah Data');
	}
	
	public function update(Request $request, $id){
		$data = ModelTodo::where('id',$id)->first();
		$data->jenisbuku = $request->input('jenisbuku');
		$data->save();

		return response('Berhasil Merubah Data');
	}

	public function destroy($id){
		$data = ModelTodo::where('id',$id)->first();
		$data->delete();

		return response('Berhasil Menghapus Data');
	}
	
	public function buku(){
		$data = ModelBuku::all();
		return response($data);
	}

	public function showbuku($id){
		$data = ModelBuku::where('idbuku',$id)->get();
		return response ($data);
	}

	public function storebuku(Request $request){
		$data = new ModelBuku();
		$data->judul = $request->input('judul');
		$data->penerbit = $request->input('penerbit');
		$data->pengarang = $request->input('pengarang');
		$data->id = $request->input('id');
		//$data->alamat = $request->input('alamat');
		//$data->email = $request->input('email');
		//$data->jenjang = $request->input('jenjang');
		//$data->notelp = $request->input('notelp');
		$data->save();

		return response('Berhasil Tambah Data');
	}
	
	public function updatebuku(Request $request, $id){
		$data = ModelBuku::where('id',$id)->first();
		$data->jenisbuku = $request->input('jenisbuku');
		$data->save();

		return response('Berhasil Merubah Data');
	}

	public function destroybuku($id){
		$data = ModelBuku::where('id',$id)->first();
		$data->delete();

		return response('Berhasil Menghapus Data');
	}
}