//页面刷新时  无动作
//点击提交  验证是否为空  如果为空 错误图标显示 
//当按键抬起时 错误图标隐藏

jQuery(document).ready(
		function() {

			// ajaxSubmit
			$('form').submit(
					function() {
						var username = $(this).find('.username').val();
						var password = $(this).find('.password').val();
						if (username == '' || password == '') {
							if (username == '') {// 如果名字为空 错误图标隐藏 显示 并且获得焦点

								$(this).find('.error').fadeOut('fast',
										function() {
											$(this).css('top', '27px');
										});
								$(this).find('.error').fadeIn(
										'fast',
										function() {
											$(this).parent().find('.username')
													.focus();

										});
								return false;
							}
							if (password == '') {// 给隐藏的图标坐定位作用
								$(this).find('.error').fadeOut('fast',
										function() {
											$(this).css('top', '96px');
										});
								$(this).find('.error').fadeIn(
										'fast',
										function() {
											$(this).parent().find('.password')
													.focus();
										});
								return false; // 阻止自动提交，

							}
							return false;
						}

						// 默认是true：异步，false：同步。
						$.ajax({
							url : "login.do",
							type : "post",
							data : {
								"username" : username,
								"password" : password
							},
							// data: $("#form").serialize(),
							// data:data,
							dataType : "json",
							async : false,

							error : function() {
								alert("输入有误");
							},
							success : function(data) {
								if (data.result) {
									// alert("登入成功")
									// 在jsp里放隐藏域 调用 val(); 服务器名可省略 8080
									window.location.href = $('#hidden').val()
											+ '/FunctionList.do';
								} else {
									alert("账号或密码错误");
								}
							}
						})

						// return false;

					});

			// 键盘弹起 名字 密码 错误隐藏
			$('.page-container form .username, .page-container form .password')
					.keyup(function() {
						// alert(3)
						$(this).parent().find('.error').fadeOut('fast');
					});

		});
