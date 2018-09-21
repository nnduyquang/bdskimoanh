<?php

namespace App\Repositories\Backend\Post;

interface PostRepositoryInterface
{
    public function getAllPostByTypeOrderById($type);

    public function showCreatePost($type);

    public function showEditPost($id, $type);

    public function createNewPostWithSeoId($request, $type);

    public function updatePost($request, $id, $type);

    public function deletePost($id,$type);
}


