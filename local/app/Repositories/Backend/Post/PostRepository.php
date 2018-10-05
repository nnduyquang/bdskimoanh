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
        $attachData = array();
        foreach ($parameters['list_category_id'] as $key => $item) {
            $attachData[$item] = array('type' => CATEGORY_POST);
        }
        $result->categoryitems(CATEGORY_POST)->attach($attachData);
        return $data;

    }

    public function updatePost($request, $id)
    {
        $data = [];
        $parameters = $this->_model->prepareParameters($request);
        $result = $this->update($id, $parameters->all());
        $result->seos->update($parameters->all());
        $syncData = array();
        $result->categoryitems(CATEGORY_POST)->sync($syncData);
        return $data;
    }

    public function deletePost($id)
    {
        $data = [];
        $this->delete($id);
        return $data;
    }


}