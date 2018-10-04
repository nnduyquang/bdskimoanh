<div class="tab-pane fade show active" id="info-company" role="tabpanel">
    <div class="col-md-12">
        <div class="form-group">
            <label style="font-weight: bold">Tên Công Ty:</label>
            {!! Form::text('config-company-name', $cauhinhs['config-company-name'], array('placeholder' => '','class' => 'form-control')) !!}
        </div>
    </div>
    <div class=" col-md-12">
        <div class="form-group">
            <label style="font-weight: bold">Số Hotline Trên Mobile:</label>
            {!! Form::text('config-phone', $cauhinhs['config-phone'], array('placeholder' => '','class' => 'form-control')) !!}
        </div>
    </div>

    <div class=" col-md-12">
        <div class="form-group">
            <label style="font-weight: bold">Nội Dung Liên Hệ:</label>
            {!! Form::textarea('config-contact',$cauhinhs['config-contact'], array('placeholder' => 'Nội Dung','id'=>'description-page','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
        </div>
    </div>
    <div class=" col-md-12">
        <div class="form-group">
            <label style="font-weight: bold">Email Liên Hệ:</label>
            {!! Form::text('config-email', $cauhinhs['config-email'], array('placeholder' => '','class' => 'form-control')) !!}
        </div>
    </div>

</div>