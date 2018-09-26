<?php

namespace App\Repositories\Backend\Post;

use App\CategoryItem;
use App\Repositories\EloquentRepository;
use App\Seo;
use Illuminate\Support\Facades\Auth;

class PostRepository extends EloquentRepository implements PostRepositoryInterface
{
    public function getModel()
    {
        return \App\Post::class;
    }

    public function getAllPostByTypeOrderById()
    {
        return $this->_model::where('post_type', '=', IS_POST)->orderBy('id', 'DESC')->get();
    }

    public function showCreatePost()
    {
        $data = [];
        $categoryItem = new CategoryItem();
        $categoryPost = $categoryItem->getAllParent('order', CATEGORY_POST);
        $data['categoryPost'] = $categoryPost;
        return $data;
    }

    public function showEditPost($id)
    {
        $data = [];
        $data['post'] = $this->find($id);
        $categoryItem = new CategoryItem();
        $categoryPost = $categoryItem->getAllParent('order', CATEGORY_POST);
        $data['categoryPost'] = $categoryPost;
        return $data;
    }


    public function createNewPostWithSeoId($request)
    {
        $data = [];
        $seo = Seo::create($request->all());
        $request->request->add(['seo_id' => $seo->id]);
        $parameters = $this->_model->prepareParameters($request);
        $result = $this->_model->create($parameters->all());
        $result->categoryitems()->attach($parameters['list_category_id']);
        return $data;

    }

    public function updatePost($request, $id)
    {
        $data = [];
        $parameters = $this->_model->prepareParameters($request);
        $result = $this->update($id,$parameters->all());
        $result->seos->update($parameters->all());
        $result->categoryitems()->sync($parameters['list_category_id']);
        return $data;
    }

    public function deletePost($id)
    {
        $data = [];
        $this->delete($id);
        return $data;
    }


}