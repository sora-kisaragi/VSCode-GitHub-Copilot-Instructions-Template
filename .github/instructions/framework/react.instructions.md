---
applyTo: "**/*.jsx, **/*.tsx"
---

# React Framework Guidelines

Follow [React best practices](https://react.dev/) and established patterns for building maintainable, performant React applications.

## File Structure and Organization
- Use `src/` for source code, `public/` for static assets
- Component files: PascalCase (e.g., `UserProfile.jsx`, `UserProfile.tsx`)
- Utility and hook files: camelCase (e.g., `userUtils.js`, `useLocalStorage.js`)
- Group related components in directories
- Use index.js files for clean imports

## Component Naming and Structure
- Components: PascalCase (e.g., `UserCard`, `NavigationMenu`)  
  コンポーネントは PascalCase  
  组件使用 PascalCase  
  컴포넌트는 PascalCase
- Props and variables: camelCase (e.g., `userName`, `onClick`)
- Constants: UPPER_SNAKE_CASE (e.g., `API_BASE_URL`)
- Custom hooks: start with `use` (e.g., `useAuthUser`, `useLocalStorage`)

## Component Design Patterns

### Functional Components (Preferred)
```jsx
// Good: Functional component with hooks
const UserProfile = ({ userId, onUpdate }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchUser(userId).then(setUser).finally(() => setLoading(false));
  }, [userId]);

  return loading ? <Spinner /> : <UserCard user={user} onUpdate={onUpdate} />;
};
```

### Props and PropTypes
- Use TypeScript interfaces or PropTypes for type safety
- Destructure props for better readability
- Provide default props when appropriate
- Keep prop interfaces minimal and focused

### State Management
- Use `useState` for local component state
- Use `useReducer` for complex state logic
- Consider Context for shared state across components
- Use external state management (Redux, Zustand) for global state

## Hooks Best Practices

### Built-in Hooks
- **useState**: Initialize with functions for expensive computations
- **useEffect**: Include all dependencies in the dependency array
- **useCallback**: Memoize functions passed to child components
- **useMemo**: Memoize expensive calculations
- **useRef**: Access DOM elements and persist values across renders

### Custom Hooks
- Extract reusable logic into custom hooks
- Follow the `use` naming convention
- Return objects instead of arrays for better destructuring
- Keep hooks focused on single responsibilities

```jsx
// Good: Custom hook example
const useApi = (url) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetch(url)
      .then(response => response.json())
      .then(setData)
      .catch(setError)
      .finally(() => setLoading(false));
  }, [url]);

  return { data, loading, error };
};
```

## Performance Optimization

### Rendering Optimization
- Use `React.memo` for components with stable props
- Implement proper key props for list items
- Avoid creating objects/functions in render methods
- Use `useCallback` and `useMemo` judiciously
- Consider lazy loading with `React.lazy` and `Suspense`

### Bundle Optimization
- Code splitting with dynamic imports
- Tree shaking for unused code elimination
- Optimize images and assets
- Use production builds for deployment

## Event Handling and Forms

### Event Handlers
```jsx
// Good: Event handler patterns
const handleSubmit = useCallback((event) => {
  event.preventDefault();
  // Handle form submission
}, []);

const handleInputChange = useCallback((event) => {
  const { name, value } = event.target;
  setFormData(prev => ({ ...prev, [name]: value }));
}, []);
```

### Form Management
- Use controlled components for form inputs
- Consider form libraries (React Hook Form, Formik) for complex forms
- Implement proper validation and error handling
- Provide immediate feedback for user interactions

## Styling Approaches

### CSS-in-JS
- Styled-components or Emotion for component-scoped styles
- Use theme providers for consistent design systems
- Avoid inline styles for complex styling

### CSS Modules
- Scoped CSS classes to prevent style conflicts
- Follow BEM or similar naming conventions
- Use CSS custom properties for theming

### Utility-First (Tailwind CSS)
- Consistent spacing and design tokens
- Responsive design with utility classes
- Custom components for repeated patterns

## Testing

### Component Testing
- Use React Testing Library for user-centric tests
- Test component behavior, not implementation details
- Mock external dependencies and API calls
- Use Jest for test runners and assertions

```jsx
// Good: Component test example
test('displays user name when provided', () => {
  render(<UserProfile user={{ name: 'John Doe' }} />);
  expect(screen.getByText('John Doe')).toBeInTheDocument();
});
```

### Integration Testing
- Test component interactions and data flow
- Use MSW (Mock Service Worker) for API mocking
- Test error states and edge cases

## TypeScript Integration

### Type Definitions
```tsx
interface User {
  id: string;
  name: string;
  email: string;
}

interface UserProfileProps {
  user: User;
  onUpdate: (user: User) => void;
  className?: string;
}

const UserProfile: React.FC<UserProfileProps> = ({ user, onUpdate, className }) => {
  // Component implementation
};
```

### Generic Components
- Use generics for reusable components
- Provide proper type constraints
- Export types for consumer usage

## Error Handling

### Error Boundaries
```jsx
class ErrorBoundary extends React.Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false };
  }

  static getDerivedStateFromError(error) {
    return { hasError: true };
  }

  componentDidCatch(error, errorInfo) {
    console.error('Error caught by boundary:', error, errorInfo);
  }

  render() {
    if (this.state.hasError) {
      return <ErrorFallback />;
    }
    return this.props.children;
  }
}
```

### Async Error Handling
- Use try-catch blocks in async functions
- Provide loading states and error messages
- Implement retry mechanisms for failed requests

## Comments and Documentation
- Main comments in English  
  主要なコメントは英語で記述  
  主要注释使用英语  
  주요 주석은 영어로 작성
- Use JSDoc for component and function documentation
- Document complex business logic
- Include prop descriptions and examples

## Build and Development Tools
- Use Create React App or Vite for project setup
- Configure ESLint and Prettier for code quality
- Use React Developer Tools for debugging
- Implement hot reload for development efficiency
- Set up proper bundling and deployment pipelines