<?php

namespace App\Http\Controllers;

use App\Repositories\Backend\Post\PostRepositoryInterface;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $postRepository;

    public function __construct(PostRepositoryInterface $postRepository)
    {
        $this->postRepository = $postRepository;
    }
    public function index(Request $request,$type)
    {
        $data = $this->postRepository->getAllPostByTypeOrderById($type);
        $posts=$data['posts'];
        return view($data['view'], compact('posts'))->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($type)
    {
        $data=$this->postRepository->showCreatePost($type);
        return view($data['view'], compact('roles', 'data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$type)
    {
        $data = $this->postRepository->createNewPostWithSeoId($request,$type);
        return redirect()->route($data['view']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id,$type)
    {
//        $post = $this->postRepository->getPostById($id);
        $data=$this->postRepository->showEditPost($id,$type);
        return view($data['view'], compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id,$type)
    {
        $data = $this->postRepository->updatePost($request,$id,$type);
        return redirect()->route($data['view']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id,$type)
    {
        $data=$this->postRepository->deletePost($id,$type);
        return redirect()->route($data['view']);
    }
}
