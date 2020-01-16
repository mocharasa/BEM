                <div class="page-title">                    
                    <h2> </h2>
                </div>                   
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                
                      <div class="row">
                        <div class="col-md-12">
						<?php echo form_open_multipart($action, array('role'=>'form', 'method'=>'post', 'class'=>'form-horizontal')); ?>	
						<?php  
							foreach ($post as $data):
						?>
						<div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><strong>Sambutan Presiden BEM</strong></h3>                                    
                            </div>
                            <div class="panel-body">							
							<div class="form-group">
                                <label class="col-md-1 col-xs-12 control-label">Tagline</label>
                                <div class="col-md-10 col-xs-12">                                            
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="fa fa-book"></span></span>
                                        <input type="text" name="tagline" class="form-control" value="<?php echo $data->tagline;?>"/>
                                    </div>                                                                                        
                                </div>
                            </div>							
							<div class="form-group">
                                <label class="col-md-1 col-xs-12 control-label">Foto</label>
                                <div class="col-md-10 col-xs-12">
									<input type="file" class="fileinput btn-primary" name="foto" id="foto" data-filename-placement="inside" title="Unggah gambar"/>
									<input type="hidden" name="old_image" value="<?php echo $data->foto;?>" />
									<span class="help-block">Maksimum ukuran gambar 1MB dan Format gambar *.PNG</span>
                                </div>                                            
                            </div>
							<div class="form-group">
                                <label class="col-md-1 col-xs-12 control-label">Sambutan</label>
                                    <div class="col-md-11 col-xs-12">
									<div class="block">
										<textarea name="sambutan" class="summernote">								
											<?php echo $data->sambutan;?>
										</textarea>
									</div>
									</div>
							</div>							
							<div class="panel-footer">                                
                                <button type="submit" name="simpan" class="btn btn-primary pull-right">Simpan</button>
                            </div>
						</div>						
						<?php endforeach ?>
						<?php echo form_close(); ?>						
                        </div>                   
                    </div>
                
                </div>
                <!-- END PAGE CONTENT WRAPPER -->   