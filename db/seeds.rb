
Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

# User seeder
user_1 = User.create(name: 'Ali Aqa Atayee', photo: 'https://picsum.photos/40', bio: '
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
            took a galley of type and scrambled it to make a type specimen book.
            It has survived not only five centuries', posts_counter:0)

user_2 = User.create(name: 'John Doe', photo: 'https://picsum.photos/19', bio: '
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
            took a galley of type and scrambled it to make a type specimen book.
            It has survived not only five centuries', posts_counter:0)
user_3 = User.create(name: 'Maryam Ahmadi', photo: 'https://picsum.photos/27', bio: '
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries', posts_counter:0)
user_4 = User.create(name: 'Necolas Max', photo: 'https://picsum.photos/5', bio: '
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries', posts_counter:0)

p "Created #{User.count} Users"

# Post seeder
post_1 = Post.create(author: user_1, title: 'Create a full-body 3D avatar with a selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_2 = Post.create(author: user_2, title: 'Create a full-body', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_3 = Post.create(author: user_1, title: '3D avatar with a selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_4 = Post.create(author: user_2, title: 'selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_5 = Post.create(author: user_3, title: 'metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_6 = Post.create(author: user_4, title: '3D avatar with a selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_7 = Post.create(author: user_3, title: '3D avatar with a selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_8 = Post.create(author: user_4, title: '3D avatar with a selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_9 = Post.create(author: user_3, title: '3D avatar with a selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)
post_10 = Post.create(author: user_4, title: '3D avatar with a selfie and use it in the metaverse', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries',comments_counter: 0, likes_counter: 0)

p "Created #{Post.count} Posts"

# Comment seeder
Comment.create([
                 { post: post_1, author: user_1, text: 'It has survived not only five centuries' },
                 { post: post_2, author: user_2, text: 'It has survived not only five centuries' },
                 { post: post_3, author: user_1, text: 'It has survived not only five centuries' },
                 { post: post_4, author: user_2, text: 'It has survived not only five centuries' },
                 { post: post_1, author: user_1, text: 'It has survived not only five centuries' },
                 { post: post_8, author: user_3, text: 'It has survived not only five centuries' },
                 { post: post_4, author: user_4, text: 'It has survived not only five centuries' },
                 { post: post_6, author: user_3, text: 'It has survived not only five centuries' },
                 { post: post_7, author: user_4, text: 'It has survived not only five centuries' }
               ])

p "Created #{Comment.count} Comments"

# Like seeder
Like.create([
  { post: post_1, author: user_1 },
  { post: post_2, author: user_2 },
  { post: post_3, author: user_1 },
  { post: post_4, author: user_2 },
  { post: post_4, author: user_3 },
  { post: post_4, author: user_4 },
  { post: post_4, author: user_4 },
  { post: post_5, author: user_3 },
  { post: post_6, author: user_2 },
  { post: post_7, author: user_1 },
  { post: post_8, author: user_2 },
  { post: post_9, author: user_4 },
  { post: post_2, author: user_3 },
  { post: post_4, author: user_4 },
  { post: post_4, author: user_1 },
  { post: post_4, author: user_3 }
])

p "Created #{Like.count} Likes"